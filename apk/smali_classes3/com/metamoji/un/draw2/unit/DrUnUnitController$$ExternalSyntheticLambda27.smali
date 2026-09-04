.class public final synthetic Lcom/metamoji/un/draw2/unit/DrUnUnitController$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    check-cast p2, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->lambda$extractText$6(Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;)I

    move-result p1

    return p1
.end method
