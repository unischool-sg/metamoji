.class public final Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;
.super Ljava/lang/Object;
.source "ChPieChart.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ch/pie/ChPieChart;->update(Lcom/metamoji/ch/IChDataSource;Lcom/metamoji/ch/ChSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChPieDataLabelItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001bR\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\'\"\u0004\u0008(\u0010)\u00a8\u0006*"
    }
    d2 = {
        "com/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem",
        "",
        "middlePiePercentagePoint",
        "Lcom/metamoji/ch/ChPoint;",
        "categoryLabel",
        "",
        "categoryIndex",
        "",
        "value",
        "",
        "middleAngle",
        "<init>",
        "(Lcom/metamoji/ch/ChPoint;Ljava/lang/String;IDD)V",
        "getMiddlePiePercentagePoint",
        "()Lcom/metamoji/ch/ChPoint;",
        "getCategoryLabel",
        "()Ljava/lang/String;",
        "getCategoryIndex",
        "()I",
        "getValue",
        "()D",
        "getMiddleAngle",
        "swsCategory",
        "Lcom/metamoji/ch/internal/ChStringWithSize;",
        "getSwsCategory",
        "()Lcom/metamoji/ch/internal/ChStringWithSize;",
        "setSwsCategory",
        "(Lcom/metamoji/ch/internal/ChStringWithSize;)V",
        "swsPercentage",
        "getSwsPercentage",
        "setSwsPercentage",
        "categoryPercentageRect",
        "Lcom/metamoji/ch/ChRect;",
        "getCategoryPercentageRect",
        "()Lcom/metamoji/ch/ChRect;",
        "setCategoryPercentageRect",
        "(Lcom/metamoji/ch/ChRect;)V",
        "isVisible",
        "",
        "()Z",
        "setVisible",
        "(Z)V",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final categoryIndex:I

.field private final categoryLabel:Ljava/lang/String;

.field private categoryPercentageRect:Lcom/metamoji/ch/ChRect;

.field private isVisible:Z

.field private final middleAngle:D

.field private final middlePiePercentagePoint:Lcom/metamoji/ch/ChPoint;

.field private swsCategory:Lcom/metamoji/ch/internal/ChStringWithSize;

.field private swsPercentage:Lcom/metamoji/ch/internal/ChStringWithSize;

.field private final value:D


# direct methods
.method public constructor <init>(Lcom/metamoji/ch/ChPoint;Ljava/lang/String;IDD)V
    .locals 1

    const-string v0, "middlePiePercentagePoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryLabel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->middlePiePercentagePoint:Lcom/metamoji/ch/ChPoint;

    .line 46
    iput-object p2, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->categoryLabel:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->categoryIndex:I

    .line 48
    iput-wide p4, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->value:D

    .line 49
    iput-wide p6, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->middleAngle:D

    .line 51
    new-instance p1, Lcom/metamoji/ch/internal/ChStringWithSize;

    sget-object p2, Lcom/metamoji/ch/ChSize;->Companion:Lcom/metamoji/ch/ChSize$Companion;

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize$Companion;->getZero()Lcom/metamoji/ch/ChSize;

    move-result-object p2

    const-string p3, ""

    invoke-direct {p1, p3, p2}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->swsCategory:Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 52
    new-instance p1, Lcom/metamoji/ch/internal/ChStringWithSize;

    sget-object p2, Lcom/metamoji/ch/ChSize;->Companion:Lcom/metamoji/ch/ChSize$Companion;

    invoke-virtual {p2}, Lcom/metamoji/ch/ChSize$Companion;->getZero()Lcom/metamoji/ch/ChSize;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/metamoji/ch/internal/ChStringWithSize;-><init>(Ljava/lang/String;Lcom/metamoji/ch/ChSize;)V

    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->swsPercentage:Lcom/metamoji/ch/internal/ChStringWithSize;

    .line 53
    sget-object p1, Lcom/metamoji/ch/ChRect;->Companion:Lcom/metamoji/ch/ChRect$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ch/ChRect$Companion;->getZero()Lcom/metamoji/ch/ChRect;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->categoryPercentageRect:Lcom/metamoji/ch/ChRect;

    return-void
.end method


# virtual methods
.method public final getCategoryIndex()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->categoryIndex:I

    return v0
.end method

.method public final getCategoryLabel()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->categoryLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategoryPercentageRect()Lcom/metamoji/ch/ChRect;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->categoryPercentageRect:Lcom/metamoji/ch/ChRect;

    return-object v0
.end method

.method public final getMiddleAngle()D
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->middleAngle:D

    return-wide v0
.end method

.method public final getMiddlePiePercentagePoint()Lcom/metamoji/ch/ChPoint;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->middlePiePercentagePoint:Lcom/metamoji/ch/ChPoint;

    return-object v0
.end method

.method public final getSwsCategory()Lcom/metamoji/ch/internal/ChStringWithSize;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->swsCategory:Lcom/metamoji/ch/internal/ChStringWithSize;

    return-object v0
.end method

.method public final getSwsPercentage()Lcom/metamoji/ch/internal/ChStringWithSize;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->swsPercentage:Lcom/metamoji/ch/internal/ChStringWithSize;

    return-object v0
.end method

.method public final getValue()D
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->value:D

    return-wide v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->isVisible:Z

    return v0
.end method

.method public final setCategoryPercentageRect(Lcom/metamoji/ch/ChRect;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->categoryPercentageRect:Lcom/metamoji/ch/ChRect;

    return-void
.end method

.method public final setSwsCategory(Lcom/metamoji/ch/internal/ChStringWithSize;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->swsCategory:Lcom/metamoji/ch/internal/ChStringWithSize;

    return-void
.end method

.method public final setSwsPercentage(Lcom/metamoji/ch/internal/ChStringWithSize;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->swsPercentage:Lcom/metamoji/ch/internal/ChStringWithSize;

    return-void
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/metamoji/ch/pie/ChPieChart$update$ChPieDataLabelItem;->isVisible:Z

    return-void
.end method
