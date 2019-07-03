.class public Lcom/game91/core/instant/virtualapk/utils/ArrayMap;
.super Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mCollections:Lcom/game91/core/instant/virtualapk/utils/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/game91/core/instant/virtualapk/utils/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 21
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;)V
    .locals 0
    .param p1, "map"    # Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;

    .prologue
    .line 28
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;-><init>(Lcom/game91/core/instant/virtualapk/utils/SimpleArrayMap;)V

    .line 29
    return-void
.end method

.method private getCollection()Lcom/game91/core/instant/virtualapk/utils/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/game91/core/instant/virtualapk/utils/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->mCollections:Lcom/game91/core/instant/virtualapk/utils/MapCollections;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/game91/core/instant/virtualapk/utils/ArrayMap$1;

    invoke-direct {v0, p0}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap$1;-><init>(Lcom/game91/core/instant/virtualapk/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->mCollections:Lcom/game91/core/instant/virtualapk/utils/MapCollections;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->mCollections:Lcom/game91/core/instant/virtualapk/utils/MapCollections;

    return-object v0
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->getCollection()Lcom/game91/core/instant/virtualapk/utils/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/utils/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->getCollection()Lcom/game91/core/instant/virtualapk/utils/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/utils/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v1, p0, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->ensureCapacity(I)V

    .line 100
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/game91/core/instant/virtualapk/utils/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/game91/core/instant/virtualapk/utils/ArrayMap;, "Lcom/game91/core/instant/virtualapk/utils/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/game91/core/instant/virtualapk/utils/ArrayMap;->getCollection()Lcom/game91/core/instant/virtualapk/utils/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game91/core/instant/virtualapk/utils/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
