.class public Lcom/metamoji/df/model/CompoundUndo;
.super Ljava/lang/Object;
.source "CompoundUndo.java"


# static fields
.field public static final MMJMD_COMPOUND_UNDO_MODEL_TYPE:Ljava/lang/String; = "compoundundo"

.field public static final MMJMD_COMPOUND_UNDO_VERSION_1:I = 0x1

.field public static final MMJMD_COMPOUND_UNDO_VERSION_CURRENT:I = 0x1

.field private static _sharedUndoPerformer:Lcom/metamoji/df/model/CompoundUndoPerformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSharedUndoPerformer()Lcom/metamoji/df/model/CompoundUndoPerformer;
    .locals 1

    .line 20
    sget-object v0, Lcom/metamoji/df/model/CompoundUndo;->_sharedUndoPerformer:Lcom/metamoji/df/model/CompoundUndoPerformer;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/metamoji/df/model/CompoundUndoPerformer;

    invoke-direct {v0}, Lcom/metamoji/df/model/CompoundUndoPerformer;-><init>()V

    sput-object v0, Lcom/metamoji/df/model/CompoundUndo;->_sharedUndoPerformer:Lcom/metamoji/df/model/CompoundUndoPerformer;

    .line 23
    :cond_0
    sget-object v0, Lcom/metamoji/df/model/CompoundUndo;->_sharedUndoPerformer:Lcom/metamoji/df/model/CompoundUndoPerformer;

    return-object v0
.end method

.method public static newUndoModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 47
    const-string v0, "compoundundo"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 48
    const-string v0, "!version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 31
    const-string v0, "compoundundo"

    invoke-static {}, Lcom/metamoji/df/model/CompoundUndo;->getSharedUndoPerformer()Lcom/metamoji/df/model/CompoundUndoPerformer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 39
    const-string v0, "compoundundo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method
