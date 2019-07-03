.class Lcom/feiyou/groupsdk/core/FYGameSDK$5;
.super Lcom/feiyou/groupsdk/core/FYPayCallback;
.source "FYGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK;->pay(Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayInfo;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK;Landroid/app/Activity;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->this$0:Lcom/feiyou/groupsdk/core/FYGameSDK;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    .line 135
    invoke-direct {p0}, Lcom/feiyou/groupsdk/core/FYPayCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public payCancel(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 1
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v0, p1}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payCancel(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 188
    return-void
.end method

.method public payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 1
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v0, p1}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 183
    return-void
.end method

.method public paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
    .locals 11
    .param p1, "resultInfo"    # Lcom/feiyou/groupsdk/core/FYResultInfo;

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->getData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/feiyou/groupsdk/core/FYPayInfo;

    .line 141
    .local v9, "info":Lcom/feiyou/groupsdk/core/FYPayInfo;
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->val$activity:Landroid/app/Activity;

    .line 142
    invoke-virtual {v9}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getRole()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getMoney()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v9}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v9}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/feiyou/groupsdk/core/FYPayInfo;->getAttach()Ljava/lang/String;

    move-result-object v7

    .line 145
    new-instance v8, Lcom/feiyou/groupsdk/core/FYGameSDK$5$1;

    iget-object v10, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-direct {v8, p0, v10}, Lcom/feiyou/groupsdk/core/FYGameSDK$5$1;-><init>(Lcom/feiyou/groupsdk/core/FYGameSDK$5;Lcom/feiyou/groupsdk/core/FYPayCallback;)V

    .line 141
    invoke-virtual/range {v0 .. v8}, Lcom/game/sdk/FYGameSDK;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/domain/OnPaymentListener;)V

    .line 178
    return-void
.end method
