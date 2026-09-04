.class public final synthetic Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$DoubleRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$DoubleRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$DoubleRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ch/bar/ChBarChart$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$DoubleRef;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/metamoji/ch/bar/ChBarChart;->update$makeCategoryTickLabels$lambda$12$lambda$11(Lkotlin/jvm/internal/Ref$DoubleRef;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
