//
//  WBAppWidgetLiveActivity.swift
//  WBAppWidget
//
//  Created by Ильяс Жанаев on 04.07.2024.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct WBAppWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct WBAppWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: WBAppWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension WBAppWidgetAttributes {
    fileprivate static var preview: WBAppWidgetAttributes {
        WBAppWidgetAttributes(name: "World")
    }
}

extension WBAppWidgetAttributes.ContentState {
    fileprivate static var smiley: WBAppWidgetAttributes.ContentState {
        WBAppWidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: WBAppWidgetAttributes.ContentState {
         WBAppWidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: WBAppWidgetAttributes.preview) {
   WBAppWidgetLiveActivity()
} contentStates: {
    WBAppWidgetAttributes.ContentState.smiley
    WBAppWidgetAttributes.ContentState.starEyes
}
