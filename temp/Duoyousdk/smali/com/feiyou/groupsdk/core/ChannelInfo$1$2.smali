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

.field private final synthetic val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/ChannelInfo$1;Lcom/feiyou/groupsdk/core/FYResultInfo;Lcom/feiyou/groupsdk/core/FYLoginCallback;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->this$1:Lcom/feiyou/groupsdk/core/ChannelInfo$1;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;

    iput-object p3, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    iput-object p4, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$activity:Landroid/app/Activity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-virtual {v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-virtual {v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/feiyou/groupsdk/core/FYUserInfo;

    .line 92
    .local v0, "fyUserInfo":Lcom/feiyou/groupsdk/core/FYUserInfo;
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$loginCallback:Lcom/feiyou/groupsdk/core/FYLoginCallback;

    invoke-virtual {v1, v0}, Lcom/feiyou/groupsdk/core/FYLoginCallback;->loginSuccess(Lcom/feiyou/groupsdk/core/FYUserInfo;)V

    .line 93
    const-string v1, "TAG"

    const-string v2, "login success "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "fyUserInfo":Lcom/feiyou/groupsdk/core/FYUserInfo;
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/feiyou/groupsdk/core/ChannelInfo$1$2;->val$resultInfo:Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-virtual {v2}, Lcom/feiyou/groupsdk/core/FYResultInfo;->getMsg()Ljava/lang/String;

    move-result-object v2

    .line 97
    const/4 v3, 0x0

    .line 96
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
