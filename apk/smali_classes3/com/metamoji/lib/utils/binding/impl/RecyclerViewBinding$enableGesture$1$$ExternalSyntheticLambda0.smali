.class public final synthetic Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;ILjava/lang/Object;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    iput p3, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$4:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    iget v2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iget-object v4, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1$$ExternalSyntheticLambda0;->f$4:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;->onSwiped$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;ILjava/lang/Object;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;Landroid/view/View;)V

    return-void
.end method
