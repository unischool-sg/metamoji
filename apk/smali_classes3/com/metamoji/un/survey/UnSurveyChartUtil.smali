.class public final Lcom/metamoji/un/survey/UnSurveyChartUtil;
.super Ljava/lang/Object;
.source "UnSurveyChartUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/metamoji/un/survey/UnSurveyChartUtil;",
        "",
        "<init>",
        "()V",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BAR_CHART_HEIGHT:F = 520.0f

.field private static final BAR_CHART_WIDTH:F = 720.0f

.field public static final CHART_HEIGHT:F = 520.0f

.field public static final CHART_MARGIN:F = 40.0f

.field public static final CHART_WIDTH:F = 720.0f

.field public static final Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

.field private static final PIE_CHART_HEIGHT:F = 520.0f

.field private static final PIE_CHART_WIDTH:F = 720.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final barChartFontSize(I)D
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->barChartFontSize(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final chooseTextColor(I)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->chooseTextColor(I)I

    move-result p0

    return p0
.end method

.method public static final createBarChartImage(Ljava/util/Map;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->createBarChartImage(Ljava/util/Map;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final createBlankChartImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->createBlankChartImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final createPieChartImage(Ljava/util/Map;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->createPieChartImage(Ljava/util/Map;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final fillColor(I)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->fillColor(I)I

    move-result p0

    return p0
.end method

.method public static final pieChartFontSize(Ljava/util/List;I)D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;I)D"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyChartUtil;->Companion:Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/un/survey/UnSurveyChartUtil$Companion;->pieChartFontSize(Ljava/util/List;I)D

    move-result-wide p0

    return-wide p0
.end method
