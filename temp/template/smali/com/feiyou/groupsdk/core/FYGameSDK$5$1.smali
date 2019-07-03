.class Lcom/feiyou/groupsdk/core/FYGameSDK$5$1;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Lcom/game/sdk/domain/OnPaymentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feiyou/groupsdk/core/FYGameSDK$5;->paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feiyou/groupsdk/core/FYGameSDK$5;

.field private final synthetic val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;


# direct methods
.method constructor <init>(Lcom/feiyou/groupsdk/core/FYGameSDK$5;Lcom/feiyou/groupsdk/core/FYPayCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5$1;->this$1:Lcom/feiyou/groupsdk/core/FYGameSDK$5;

    iput-object p2, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public paymentCancel(Lcom/game/sdk/domain/PaymentCancelMsg;)V
    .locals 3
    .param p1, "arg0"    # Lcom/game/sdk/domain/PaymentCancelMsg;

    .prologue
    .line 169
    new-instance v0, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 170
    .local v0, "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/Float;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/feiyou/groupsdk/core/FYErrorCode;->CANCEL:Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 171
    iget-object v1, p1, Lcom/game/sdk/domain/PaymentCancelMsg;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v1, v0}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payCancel(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 174
    return-void
.end method

.method public paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V
    .locals 3
    .param p1, "paymentErrorMsg"    # Lcom/game/sdk/domain/PaymentErrorMsg;

    .prologue
    .line 160
    new-instance v0, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 161
    .local v0, "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/Float;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/feiyou/groupsdk/core/FYErrorCode;->FAILURE:Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 162
    iget-object v1, p1, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 163
    iget v1, p1, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setData(Ljava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v1, v0}, Lcom/feiyou/groupsdk/core/FYPayCallback;->payFailure(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 165
    return-void
.end method

.method public paymentSuccess(Lcom/game/sdk/domain/PaymentCallbackInfo;)V
    .locals 3
    .param p1, "paymentCallbackInfo"    # Lcom/game/sdk/domain/PaymentCallbackInfo;

    .prologue
    .line 149
    new-instance v0, Lcom/feiyou/groupsdk/core/FYResultInfo;

    invoke-direct {v0}, Lcom/feiyou/groupsdk/core/FYResultInfo;-><init>()V

    .line 150
    .local v0, "resultInfo":Lcom/feiyou/groupsdk/core/FYResultInfo;, "Lcom/feiyou/groupsdk/core/FYResultInfo<Ljava/lang/Float;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/feiyou/groupsdk/core/FYErrorCode;->SUCCESS:Lcom/feiyou/groupsdk/core/FYErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setCode(Ljava/lang/String;)V

    .line 151
    iget-object v1, p1, Lcom/game/sdk/domain/PaymentCallbackInfo;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setMsg(Ljava/lang/String;)V

    .line 152
    iget v1, p1, Lcom/game/sdk/domain/PaymentCallbackInfo;->money:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/feiyou/groupsdk/core/FYResultInfo;->setData(Ljava/lang/Object;)V

    .line 153
    iget-object v1, p0, Lcom/feiyou/groupsdk/core/FYGameSDK$5$1;->val$payCallback:Lcom/feiyou/groupsdk/core/FYPayCallback;

    invoke-virtual {v1, v0}, Lcom/feiyou/groupsdk/core/FYPayCallback;->paySuccess(Lcom/feiyou/groupsdk/core/FYResultInfo;)V

    .line 155
    return-void
.end method
