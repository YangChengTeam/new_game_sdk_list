.class Lcom/game/sdk/FYGameSDK$1$1;
.super Ljava/lang/Object;
.source "FYGameSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/FYGameSDK$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/FYGameSDK$1;


# direct methods
.method constructor <init>(Lcom/game/sdk/FYGameSDK$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK$1$1;->this$1:Lcom/game/sdk/FYGameSDK$1;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$1$1;->this$1:Lcom/game/sdk/FYGameSDK$1;

    invoke-static {v0}, Lcom/game/sdk/FYGameSDK$1;->access$0(Lcom/game/sdk/FYGameSDK$1;)Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/FYGameSDK;->access$2(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/FYGameSDK$InitCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/game/sdk/FYGameSDK$InitCloseListener;->initClose()V

    .line 162
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$1$1;->this$1:Lcom/game/sdk/FYGameSDK$1;

    invoke-static {v0}, Lcom/game/sdk/FYGameSDK$1;->access$0(Lcom/game/sdk/FYGameSDK$1;)Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/game/sdk/FYGameSDK;->access$3(Lcom/game/sdk/FYGameSDK;Z)V

    .line 164
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$1$1;->this$1:Lcom/game/sdk/FYGameSDK$1;

    invoke-static {v0}, Lcom/game/sdk/FYGameSDK$1;->access$0(Lcom/game/sdk/FYGameSDK$1;)Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/game/sdk/FYGameSDK;->initCallback:Lcom/game/sdk/OnSDKInitListener;

    invoke-interface {v0}, Lcom/game/sdk/OnSDKInitListener;->initSuccess()V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$1$1;->this$1:Lcom/game/sdk/FYGameSDK$1;

    invoke-static {v0}, Lcom/game/sdk/FYGameSDK$1;->access$0(Lcom/game/sdk/FYGameSDK$1;)Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/game/sdk/FYGameSDK;->access$3(Lcom/game/sdk/FYGameSDK;Z)V

    .line 167
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK$1$1;->this$1:Lcom/game/sdk/FYGameSDK$1;

    invoke-static {v0}, Lcom/game/sdk/FYGameSDK$1;->access$0(Lcom/game/sdk/FYGameSDK$1;)Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/game/sdk/FYGameSDK;->initCallback:Lcom/game/sdk/OnSDKInitListener;

    invoke-interface {v0}, Lcom/game/sdk/OnSDKInitListener;->initFailure()V

    goto :goto_0
.end method
