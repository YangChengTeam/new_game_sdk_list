.class Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;
.super Ljava/lang/Object;
.source "ChannelInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/ChannelInfo$1;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feiyou/groupsdk/core/ChannelInfo$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

.field private final synthetic val$resultInfo:Lcom/game/sdk/domain/ResultInfo;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/ChannelInfo$1;Lcom/game/sdk/domain/ResultInfo;Lcom/feiyou/groupsdk/core/FYLoginCallback;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->this$1:Lcom/feiyou/groupsdk/core/ChannelInfo$1;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$resultInfo:Lcom/game/sdk/domain/ResultInfo;

    iput-object p3, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    iput-object p4, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$activity:Landroid/app/Activity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$resultInfo:Lcom/game/sdk/domain/ResultInfo;

    iget v0, v0, Lcom/game/sdk/domain/ResultInfo;->code:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    iget-object v0, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$resultInfo:Lcom/game/sdk/domain/ResultInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v0, Lcom/feiyou/groupsdk/core/FYUserInfo;

    invoke-virtual {v1, v0}, Lcom/feiyou/groupsdk/core/FYLoginCallback;->loginSuccess(Lcom/feiyou/groupsdk/core/FYUserInfo;)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$resultInfo:Lcom/game/sdk/domain/ResultInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    .line 91
    const/4 v2, 0x0

    .line 90
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
