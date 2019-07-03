.class Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$3;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$3;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->recreatePinnedShadow()V

    return-void
.end method
