.class public Lcom/metamoji/ctold/CtUndoPerformer;
.super Ljava/lang/Object;
.source "CtUndoPerformer.java"

# interfaces
.implements Lcom/metamoji/df/model/IUndoPerformer;


# static fields
.field private static final CT_CONTENTS_TAG_UNDO_TYPE:Ljava/lang/String; = "CTUNDO"

.field private static final CT_CONTENTS_TAG_UNDO_VERSION:I = 0x1

.field public static final CT_DIRECTION_TYPE_REDO:Ljava/lang/String; = "RD"

.field public static final CT_DIRECTION_TYPE_UNDO:Ljava/lang/String; = "UD"


# instance fields
.field private docTagManager:Lcom/metamoji/ctold/CtDocTagManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ctold/CtUndoPerformer;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    return-void
.end method

.method public static createUndoModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 55
    const-string v0, "CTUNDO"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 56
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-object p0
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 61
    new-instance v0, Lcom/metamoji/ctold/CtUndoPerformer;

    invoke-direct {v0}, Lcom/metamoji/ctold/CtUndoPerformer;-><init>()V

    .line 62
    const-string v1, "CTUNDO"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method public static setToUndoModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-interface {p0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-eqz p3, :cond_2

    .line 78
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 80
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_0
    invoke-interface {p0, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 66
    const-string v0, "CTUNDO"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 46
    const-string v0, "!type"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "!version"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    .line 48
    const-string v1, "CTUNDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public performUndoOrRedo(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/ctold/CtUndoPerformer;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    invoke-interface {v0, p2, p1}, Lcom/metamoji/ctold/CtDocTagManager;->performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method
