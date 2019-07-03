.class public final Lcom/ipaynow/plugin/view/template/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/view/template/a/a/a;


# instance fields
.field private cH:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/b;->cH:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ipaynow/plugin/view/template/a/c/c;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/b;->cH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final af()I
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/b;->cH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final f(I)Lcom/ipaynow/plugin/view/template/a/c/c;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/template/a/c/b;->cH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/view/template/a/c/c;

    return-object v0
.end method
