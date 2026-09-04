.class public final synthetic Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    check-cast p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    invoke-static {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableAutoScroll$lambda$4(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
