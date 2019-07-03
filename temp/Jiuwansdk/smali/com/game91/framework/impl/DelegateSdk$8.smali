.class Lcom/game91/framework/impl/DelegateSdk$8;
.super Ljava/lang/Object;
.source "DelegateSdk.java"

# interfaces
.implements Lcom/game91/framework/core/IHttp$CallError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/impl/DelegateSdk;->submitRoleInfo(Lcom/game91/framework/callback/RoleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/impl/DelegateSdk;


# direct methods
.method constructor <init>(Lcom/game91/framework/impl/DelegateSdk;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/impl/DelegateSdk;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/game91/framework/impl/DelegateSdk$8;->this$0:Lcom/game91/framework/impl/DelegateSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 436
    return-void
.end method
