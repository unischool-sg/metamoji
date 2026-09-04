.class public final synthetic Lcom/metamoji/un/draw2/unit/DrUnUnitController$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/cm/RectEx;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/cm/RectEx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$$ExternalSyntheticLambda22;->f$0:Lcom/metamoji/cm/RectEx;

    return-void
.end method


# virtual methods
.method public final create(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$$ExternalSyntheticLambda22;->f$0:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->lambda$createPasteboardDataForElements$25(Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1
.end method
