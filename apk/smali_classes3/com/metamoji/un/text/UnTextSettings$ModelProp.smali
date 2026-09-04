.class public Lcom/metamoji/un/text/UnTextSettings$ModelProp;
.super Ljava/lang/Object;
.source "UnTextSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModelProp"
.end annotation


# static fields
.field public static final TEXT_UNIT_BACKGROUND_COLOR:Ljava/lang/String; = "textUnitBackgroundColor"

.field public static final TEXT_UNIT_BACKGROUND_COLOR_ALPHA:Ljava/lang/String; = "textUnitBackgroundColorAlpha"

.field public static final TEXT_UNIT_BORDER_STYLE:Ljava/lang/String; = "textUnitBorderStyle"

.field public static final TEXT_UNIT_FONT_COLOR:Ljava/lang/String; = "textUnitFontColor"

.field public static final TEXT_UNIT_FONT_FAMILY:Ljava/lang/String; = "textUnitFontFamily"

.field public static final TEXT_UNIT_FONT_FAMILY_FOR_G5:Ljava/lang/String; = "textUnitFontFamilyForG5"

.field public static final TEXT_UNIT_FONT_SIZE:Ljava/lang/String; = "textUnitFontSize"

.field public static final TEXT_UNIT_LINE_HEIGHT:Ljava/lang/String; = "textUnitLineHeight"

.field public static final TEXT_UNIT_RULED_LINE_STYLE:Ljava/lang/String; = "textUnitRuledLineStyle"

.field public static final TEXT_UNIT_VERTICAL_WRITING:Ljava/lang/String; = "textUnitVerticalWriting"


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextSettings;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/UnTextSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextSettings$ModelProp;->this$0:Lcom/metamoji/un/text/UnTextSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
