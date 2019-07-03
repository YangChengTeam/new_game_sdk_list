.class Lcom/game91/framework/act/DarkListActivity$1;
.super Ljava/lang/Object;
.source "DarkListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game91/framework/act/DarkListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/act/DarkListActivity;


# direct methods
.method constructor <init>(Lcom/game91/framework/act/DarkListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/act/DarkListActivity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/game91/framework/act/DarkListActivity$1;->this$0:Lcom/game91/framework/act/DarkListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/game91/framework/act/DarkListActivity$1;->this$0:Lcom/game91/framework/act/DarkListActivity;

    invoke-static {v0}, Lcom/game91/framework/act/DarkListActivity;->access$000(Lcom/game91/framework/act/DarkListActivity;)V

    .line 73
    return-void
.end method
