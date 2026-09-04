.class public Lcom/metamoji/forSchool/ScSchoolConstants;
.super Ljava/lang/Object;
.source "ScSchoolConstants.java"


# static fields
.field public static final NB_ATTENTION_BG_COLOR:I

.field public static final NB_ATTENTION_BG_COLOR_NOT_BELONG:I

.field public static final NB_ATTENTION_FONT_COLOR:I

.field public static final NB_ATTENTION_FONT_SIZE:I = 0xd

.field public static final NB_ATTENTION_HEIGHT:I = 0x14

.field public static final NB_ATTENTION_PADDING:I = 0x5

.field public static final SCHOOL_LAYERINFO_COLOR_EDIT:I

.field public static final SCHOOL_LAYERINFO_COLOR_PERSONAL:I

.field public static final SCHOOL_MONITORING_MAX:I = 0x12c

.field public static final SCHOOL_STATUS_COLOR_DOIT:I

.field public static final SCHOOL_STATUS_COLOR_DOIT_EN:I

.field public static final SCHOOL_STATUS_COLOR_DOIT_JP:I

.field public static final SCHOOL_STATUS_COLOR_HELP:I

.field public static final SCHOOL_STATUS_COLOR_OFFLINE:I

.field public static final USERLIST_BGCOLOR_NORMAL:I

.field public static final USERLIST_BGCOLOR_OFFLINE:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    sget v0, Lcom/metamoji/noteanytime/R$color;->school_status_color_doit_en:I

    sput v0, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT_EN:I

    .line 14
    sget v1, Lcom/metamoji/noteanytime/R$color;->school_status_color_doit_jp:I

    sput v1, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT_JP:I

    .line 15
    sget v2, Lcom/metamoji/noteanytime/R$color;->school_status_color_help:I

    sput v2, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    .line 16
    sget v2, Lcom/metamoji/noteanytime/R$color;->school_status_color_offline:I

    sput v2, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_OFFLINE:I

    .line 18
    sget v2, Lcom/metamoji/noteanytime/R$color;->userlist_bgcolor_normal:I

    sput v2, Lcom/metamoji/forSchool/ScSchoolConstants;->USERLIST_BGCOLOR_NORMAL:I

    .line 19
    sget v2, Lcom/metamoji/noteanytime/R$color;->userlist_bgcolor_offline:I

    sput v2, Lcom/metamoji/forSchool/ScSchoolConstants;->USERLIST_BGCOLOR_OFFLINE:I

    .line 21
    sget v2, Lcom/metamoji/noteanytime/R$color;->school_layerinfo_color_edit:I

    sput v2, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_LAYERINFO_COLOR_EDIT:I

    .line 22
    sget v2, Lcom/metamoji/noteanytime/R$color;->school_layerinfo_color_personal:I

    sput v2, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_LAYERINFO_COLOR_PERSONAL:I

    .line 24
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    sput v0, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    .line 32
    const-string v0, "#ffffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ScSchoolConstants;->NB_ATTENTION_FONT_COLOR:I

    .line 33
    const-string v0, "#ff2382ff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ScSchoolConstants;->NB_ATTENTION_BG_COLOR:I

    .line 34
    const-string v0, "#ffff0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ScSchoolConstants;->NB_ATTENTION_BG_COLOR_NOT_BELONG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
