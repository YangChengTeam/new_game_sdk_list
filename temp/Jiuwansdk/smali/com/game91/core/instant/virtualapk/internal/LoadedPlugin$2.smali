.class Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$2;
.super Ljava/lang/Object;
.source "LoadedPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->invokeApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;


# direct methods
.method constructor <init>(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$2;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$2;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    iget-object v1, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$2;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin$2;->this$0:Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;

    invoke-static {v3}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$200(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;)Lcom/game91/core/instant/virtualapk/PluginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/game91/core/instant/virtualapk/PluginManager;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$300(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;->access$102(Lcom/game91/core/instant/virtualapk/internal/LoadedPlugin;Landroid/app/Application;)Landroid/app/Application;

    .line 291
    return-void
.end method
