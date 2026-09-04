.class public final synthetic Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$$ExternalSyntheticLambda1;
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
    check-cast p1, Lcom/metamoji/cm/RectEx;

    check-cast p2, Lcom/metamoji/cm/RectEx;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->lambda$vspace$1(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)I

    move-result p1

    return p1
.end method
