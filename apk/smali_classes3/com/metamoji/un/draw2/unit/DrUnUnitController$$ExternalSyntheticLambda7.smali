.class public final synthetic Lcom/metamoji/un/draw2/unit/DrUnUnitController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/cm/RectEx;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/cm/RectEx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$$ExternalSyntheticLambda7;->f$0:Lcom/metamoji/cm/RectEx;

    return-void
.end method


# virtual methods
.method public final preCheck(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$$ExternalSyntheticLambda7;->f$0:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->lambda$handleInsertPartsCommand$19(Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method
