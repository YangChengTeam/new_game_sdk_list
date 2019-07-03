.class public Lcom/game91/core/instant/virtualapk/utils/DexUtil;
.super Ljava/lang/Object;
.source "DexUtil.java"


# static fields
.field private static sHasInsertedNativeLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->sHasInsertedNativeLibrary:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "firstArray"    # Ljava/lang/Object;
    .param p1, "secondArray"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 62
    .local v3, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 63
    .local v1, "firstArrayLength":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    add-int v0, v1, v5

    .line 64
    .local v0, "allLength":I
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 65
    .local v4, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 66
    if-ge v2, v1, :cond_0

    .line 67
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 65
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    sub-int v5, v2, v1

    invoke-static {p1, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 72
    :cond_1
    return-object v4
.end method

.method private static getDexElements(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "pathList"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "dexElements"

    invoke-static {v0, p0, v1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getPathClassLoader()Ldalvik/system/PathClassLoader;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/game91/core/instant/virtualapk/utils/DexUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    .line 49
    .local v0, "pathClassLoader":Ldalvik/system/PathClassLoader;
    return-object v0
.end method

.method private static getPathList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "baseDexClassLoader"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    const-string v0, "dalvik.system.BaseDexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pathList"

    invoke-static {v0, p0, v1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static insertDex(Ldalvik/system/DexClassLoader;)V
    .locals 6
    .param p0, "dexClassLoader"    # Ldalvik/system/DexClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getPathClassLoader()Ldalvik/system/PathClassLoader;

    move-result-object v4

    invoke-static {v4}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "baseDexElements":Ljava/lang/Object;
    invoke-static {p0}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getDexElements(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    .local v2, "newDexElements":Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->combineArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "allDexElements":Ljava/lang/Object;
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getPathClassLoader()Ldalvik/system/PathClassLoader;

    move-result-object v4

    invoke-static {v4}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 41
    .local v3, "pathList":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "dexElements"

    invoke-static {v4, v3, v5, v0}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-static {p0}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->insertNativeLibrary(Ldalvik/system/DexClassLoader;)V

    .line 45
    return-void
.end method

.method private static declared-synchronized insertNativeLibrary(Ldalvik/system/DexClassLoader;)V
    .locals 23
    .param p0, "dexClassLoader"    # Ldalvik/system/DexClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    const-class v20, Lcom/game91/core/instant/virtualapk/utils/DexUtil;

    monitor-enter v20

    :try_start_0
    sget-boolean v19, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->sHasInsertedNativeLibrary:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v19, :cond_0

    .line 123
    :goto_0
    monitor-exit v20

    return-void

    .line 79
    :cond_0
    const/16 v19, 0x1

    :try_start_1
    sput-boolean v19, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->sHasInsertedNativeLibrary:Z

    .line 81
    invoke-static {}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getPathClassLoader()Ldalvik/system/PathClassLoader;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 82
    .local v7, "basePathList":Ljava/lang/Object;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x16

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_4

    .line 83
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v21, "nativeLibraryDirectories"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 85
    .local v13, "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/game91/core/instant/virtualapk/Systems;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v21, "valibs"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v21, "nativeLibraryPathElements"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 88
    .local v6, "baseNativeLibraryPathElements":Ljava/lang/Object;
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 90
    .local v5, "baseArrayLength":I
    invoke-static/range {p0 .. p0}, Lcom/game91/core/instant/virtualapk/utils/DexUtil;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 91
    .local v17, "newPathList":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v21, "nativeLibraryPathElements"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 92
    .local v16, "newNativeLibraryPathElements":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    .line 93
    .local v10, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v19, v5, 0x1

    move/from16 v0, v19

    invoke-static {v10, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 94
    .local v4, "allNativeLibraryPathElements":Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v6, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x1a

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    .line 98
    const-string v19, "path"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 102
    .local v18, "soPathField":Ljava/lang/reflect/Field;
    :goto_1
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 103
    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    .line 104
    .local v14, "newArrayLength":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v14, :cond_1

    .line 105
    move-object/from16 v0, v16

    invoke-static {v0, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 106
    .local v9, "element":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "dir":Ljava/lang/String;
    const-string v19, "valibs"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 108
    invoke-static {v4, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 113
    .end local v8    # "dir":Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v21, "nativeLibraryPathElements"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1, v4}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 76
    .end local v4    # "allNativeLibraryPathElements":Ljava/lang/Object;
    .end local v5    # "baseArrayLength":I
    .end local v6    # "baseNativeLibraryPathElements":Ljava/lang/Object;
    .end local v7    # "basePathList":Ljava/lang/Object;
    .end local v10    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "i":I
    .end local v13    # "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v14    # "newArrayLength":I
    .end local v16    # "newNativeLibraryPathElements":Ljava/lang/Object;
    .end local v17    # "newPathList":Ljava/lang/Object;
    .end local v18    # "soPathField":Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 100
    .restart local v4    # "allNativeLibraryPathElements":Ljava/lang/Object;
    .restart local v5    # "baseArrayLength":I
    .restart local v6    # "baseNativeLibraryPathElements":Ljava/lang/Object;
    .restart local v7    # "basePathList":Ljava/lang/Object;
    .restart local v10    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v16    # "newNativeLibraryPathElements":Ljava/lang/Object;
    .restart local v17    # "newPathList":Ljava/lang/Object;
    :cond_2
    :try_start_2
    const-string v19, "dir"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    .restart local v18    # "soPathField":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 104
    .restart local v8    # "dir":Ljava/lang/String;
    .restart local v9    # "element":Ljava/lang/Object;
    .restart local v11    # "i":I
    .restart local v14    # "newArrayLength":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 115
    .end local v4    # "allNativeLibraryPathElements":Ljava/lang/Object;
    .end local v5    # "baseArrayLength":I
    .end local v6    # "baseNativeLibraryPathElements":Ljava/lang/Object;
    .end local v8    # "dir":Ljava/lang/String;
    .end local v9    # "element":Ljava/lang/Object;
    .end local v10    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "i":I
    .end local v13    # "nativeLibraryDirectories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v14    # "newArrayLength":I
    .end local v16    # "newNativeLibraryPathElements":Ljava/lang/Object;
    .end local v17    # "newPathList":Ljava/lang/Object;
    .end local v18    # "soPathField":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v21, "nativeLibraryDirectories"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->getFieldNoException(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/io/File;

    move-object/from16 v0, v19

    check-cast v0, [Ljava/io/File;

    move-object v12, v0

    .line 117
    .local v12, "nativeLibraryDirectories":[Ljava/io/File;
    array-length v3, v12

    .line 118
    .local v3, "N":I
    add-int/lit8 v19, v3, 0x1

    move/from16 v0, v19

    new-array v15, v0, [Ljava/io/File;

    .line 119
    .local v15, "newNativeLibraryDirectories":[Ljava/io/File;
    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v12, v0, v15, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-static {}, Lcom/game91/core/instant/virtualapk/Systems;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v21, "valibs"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v19

    aput-object v19, v15, v3

    .line 121
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string v21, "nativeLibraryDirectories"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1, v15}, Lcom/game91/core/instant/virtualapk/utils/ReflectUtil;->setField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
