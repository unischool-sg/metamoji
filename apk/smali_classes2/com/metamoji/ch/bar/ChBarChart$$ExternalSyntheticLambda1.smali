.class public final synthetic Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;

    check-cast p1, Lcom/metamoji/ch/ChRect;

    invoke-static {v0, v1, p1}, Lcom/metamoji/ch/bar/ChBarChart;->update$makeValueTickLabels$lambda$6$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/ch/internal/transformer/ChCompositeTransformer;Lcom/metamoji/ch/ChRect;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
