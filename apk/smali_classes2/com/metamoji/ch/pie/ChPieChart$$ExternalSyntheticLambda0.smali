.class public final synthetic Lcom/metamoji/ch/pie/ChPieChart$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;

    invoke-static {p1}, Lcom/metamoji/ch/pie/ChPieChart;->update$makeDataLabels$lambda$6(Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
