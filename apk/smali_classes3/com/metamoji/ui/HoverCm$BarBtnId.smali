.class public final Lcom/metamoji/ui/HoverCm$BarBtnId;
.super Ljava/lang/Object;
.source "HoverCm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/HoverCm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BarBtnId"
.end annotation


# static fields
.field public static final ARRANGE:I

.field public static final ERASER:I

.field public static final LASER:I

.field public static final PEN:I

.field public static final SELECT:I

.field public static final TEXT:I

.field public static final VIEW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_pen:I

    sput v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->PEN:I

    .line 61
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_view:I

    sput v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->VIEW:I

    .line 62
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_text:I

    sput v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->TEXT:I

    .line 63
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_eraser:I

    sput v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->ERASER:I

    .line 64
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_select:I

    sput v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->SELECT:I

    .line 65
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_laser:I

    sput v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->LASER:I

    .line 66
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_modebar_btn_arrange:I

    sput v0, Lcom/metamoji/ui/HoverCm$BarBtnId;->ARRANGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
