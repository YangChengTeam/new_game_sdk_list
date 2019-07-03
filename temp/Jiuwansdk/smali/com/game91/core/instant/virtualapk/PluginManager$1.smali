.class Lcom/game91/core/instant/virtualapk/PluginManager$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/core/instant/virtualapk/PluginManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/core/instant/virtualapk/PluginManager;


# direct methods
.method constructor <init>(Lcom/game91/core/instant/virtualapk/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/core/instant/virtualapk/PluginManager;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/PluginManager$1;->this$0:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/PluginManager$1;->this$0:Lcom/game91/core/instant/virtualapk/PluginManager;

    invoke-static {v0}, Lcom/game91/core/instant/virtualapk/PluginManager;->access$000(Lcom/game91/core/instant/virtualapk/PluginManager;)V

    .line 123
    return-void
.end method
