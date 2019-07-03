.class public interface abstract Lcom/game91/framework/core/IPayChannel;
.super Ljava/lang/Object;
.source "IPayChannel.java"


# virtual methods
.method public abstract getChannelOrderInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChannelPayInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pay1(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/PayInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Lcom/game91/framework/callback/OrderInfo;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pay3(Landroid/app/Activity;Lcom/game91/framework/callback/PayInfo;Ljava/util/Map;Lcom/game91/framework/callback/Callback;Lcom/game91/framework/callback/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/game91/framework/callback/PayInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Lcom/game91/framework/callback/OrderInfo;",
            ">;",
            "Lcom/game91/framework/callback/Callback",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setChannelOrderInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setChannelPayInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
