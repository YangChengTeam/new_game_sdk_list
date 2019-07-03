.class Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;
.super Ljava/lang/Object;
.source "ChannelInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/ChannelInfo$2;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feiyou/groupsdk/core/ChannelInfo$2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$callback:Lcom/feiyou/groupsdk/core/FYPayCallback;

.field private final synthetic val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/ChannelInfo$2;Lcom/feiyou/groupsdk/core/FYResultInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;->this$1:Lcom/feiyou/groupsdk/core/ChannelInfo$2;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;->val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;

    iput-object p3, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;->val$callback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    iput-object p4, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;->val$activity:Landroid/app/Activity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    const-string v0, "1"

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;->val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-virtual {v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;->val$callback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;->val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYPayCallback;->paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$2$2;->val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-virtual {v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
