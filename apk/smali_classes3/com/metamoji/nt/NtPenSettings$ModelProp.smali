.class public Lcom/metamoji/nt/NtPenSettings$ModelProp;
.super Ljava/lang/Object;
.source "NtPenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelProp"
.end annotation


# static fields
.field public static final ARROW_KINDS:Ljava/lang/String; = "arrowKinds"

.field public static final ARROW_TYPE:Ljava/lang/String; = "arrowType"

.field public static final CURRENTINDEX:Ljava/lang/String; = "currentIndex"

.field public static final FILL_ALPHA:Ljava/lang/String; = "fillAlpha"

.field public static final FILL_COLORS:Ljava/lang/String; = "fillColors"

.field public static final FILL_TYPE:Ljava/lang/String; = "fillType"

.field public static final FOUNTAIN_BEGIN_RUN:Ljava/lang/String; = "beginRun"

.field public static final FOUNTAIN_BEGIN_RUN_DELTA:Ljava/lang/String; = "beginRunDelta"

.field public static final FOUNTAIN_BEGIN_RUN_RATE:Ljava/lang/String; = "beginRunRate"

.field public static final FOUNTAIN_BEGIN_STAY:Ljava/lang/String; = "beginStay"

.field public static final FOUNTAIN_BEGIN_STAY_DELTA:Ljava/lang/String; = "beginStayDelta"

.field public static final FOUNTAIN_BEGIN_STAY_RATE:Ljava/lang/String; = "beginStayRate"

.field public static final FOUNTAIN_END_RUN:Ljava/lang/String; = "endRun"

.field public static final FOUNTAIN_END_RUN_DELTA:Ljava/lang/String; = "endRunDelta"

.field public static final FOUNTAIN_END_RUN_RATE:Ljava/lang/String; = "endRunRate"

.field public static final FOUNTAIN_END_STAY:Ljava/lang/String; = "endStay"

.field public static final FOUNTAIN_END_STAY_DELTA:Ljava/lang/String; = "endStayDelta"

.field public static final FOUNTAIN_END_STAY_RATE:Ljava/lang/String; = "endStayRate"

.field public static final FOUNTAIN_TAIL_RUN:Ljava/lang/String; = "tailRun"

.field public static final FOUNTAIN_TAIL_RUN_DELTA:Ljava/lang/String; = "tailRunDelta"

.field public static final FOUNTAIN_TAIL_RUN_RATE:Ljava/lang/String; = "tailRunRate"

.field public static final FOUNTAIN_TAIL_STAY:Ljava/lang/String; = "tailStay"

.field public static final FOUNTAIN_TAIL_STAY_DELTA:Ljava/lang/String; = "tailStayDelta"

.field public static final FOUNTAIN_TAIL_STAY_RATE:Ljava/lang/String; = "tailStayRate"

.field public static final FOUNTAIN_TRANS:Ljava/lang/String; = "trans"

.field public static final HAS_ARROW:Ljava/lang/String; = "hasArrow"

.field public static final HAS_FILL:Ljava/lang/String; = "hasFill"

.field public static final INKCOLORS:Ljava/lang/String; = "inkColors"

.field public static final INKID:Ljava/lang/String; = "inkId"

.field public static final INKTYPE:Ljava/lang/String; = "inkType"

.field public static final LINEALPHA:Ljava/lang/String; = "lineAlpha"

.field public static final LINECOLOR:Ljava/lang/String; = "lineColor"

.field public static final LINEDASH:Ljava/lang/String; = "lineDash"

.field public static final LINEWIDTH:Ljava/lang/String; = "lineWidth"

.field public static final PENANGLE:Ljava/lang/String; = "penAngle"

.field public static final PENID:Ljava/lang/String; = "penId"

.field public static final PENRATE:Ljava/lang/String; = "penRate"

.field public static final PENTYPE:Ljava/lang/String; = "penType"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPenSettings;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtPenSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/metamoji/nt/NtPenSettings$ModelProp;->this$0:Lcom/metamoji/nt/NtPenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
