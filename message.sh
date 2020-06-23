echo '{
    "users": [
        "cd"
    ],
    "body": {
        "blocks": [
            {
                "type": "section",
                "text": {
                    "type": "mrkdwn",
                    "text": "You have a new request:\n*<google.com|Fred Enriquez - Time Off request>*"
                }
            },
            {
                "type": "section",
                "text": {
                    "type": "mrkdwn",
                    "text": "*Type:*\nPaid time off\n*When:*\nAug 10-Aug 13\n*Hours:* 16.0 (2 days)\n*Remaining balance:* 32.0 hours (4 days)\n*Comments:* \"Family in town, going camping!\""
                },
                "accessory": {
                    "type": "image",
                    "image_url": "https://api.slack.com/img/blocks/bkb_template_images/approvalsNewDevice.png",
                    "alt_text": "computer thumbnail"
                }
            },
            {
                "type": "actions",
                "elements": [
                    {
                        "type": "button",
                        "text": {
                            "type": "plain_text",
                            "emoji": true,
                            "text": "Approve"
                        },
                        "style": "primary",
                        "value": "click_me_123",
                        "action_id": "command:promote"
                    },
                    {
                        "type": "button",
                        "text": {
                            "type": "plain_text",
                            "emoji": true,
                            "text": "Deny"
                        },
                        "style": "danger",
                        "value": "click_me_123",
                        "action_id": "command:demote"
                    }
                ]
            }
        ]
    },
    "options": {
        "actions": [
            {
                "id": "promote",
                "command": "promote",
                "parameters": []
            },
            {
                "id": "demote",
                "command": "demote",
                "parameters": []
            }
        ]
    }
}' > $ATOMIST_MESSAGES_DIR/test.json
