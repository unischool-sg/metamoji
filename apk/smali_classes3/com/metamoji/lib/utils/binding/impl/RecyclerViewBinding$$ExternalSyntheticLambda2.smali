.class public final synthetic Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

.field public final synthetic f$1:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableAutoScroll$lambda$3(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;IIZ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
