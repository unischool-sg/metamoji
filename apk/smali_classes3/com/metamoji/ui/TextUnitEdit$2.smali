.class Lcom/metamoji/ui/TextUnitEdit$2;
.super Lcom/metamoji/un/text/model/UnitStyles;
.source "TextUnitEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/TextUnitEdit;->initTextModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/TextUnitEdit;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/TextUnitEdit;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$2;->this$0:Lcom/metamoji/ui/TextUnitEdit;

    invoke-direct {p0}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$2;->fontFamilyName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 237
    invoke-static {p1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_fontSize(Lcom/metamoji/ui/TextUnitEdit;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/metamoji/ui/TextUnitEdit;->-$$Nest$fget_fontSize(Lcom/metamoji/ui/TextUnitEdit;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41400000    # 12.0f

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$2;->fontSize:Ljava/lang/Float;

    const/16 p1, 0xff

    const/4 v0, 0x0

    .line 238
    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitEdit$2;->charColor:Ljava/lang/Integer;

    .line 239
    invoke-static {p1, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$2;->bgColor:Ljava/lang/Integer;

    const p1, 0x3f99999a    # 1.2f

    .line 240
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$2;->lineHeight:Ljava/lang/Float;

    .line 241
    sget-object p1, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$2;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 242
    sget-object p1, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$2;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 243
    new-instance p1, Lcom/metamoji/cm/EdgeInsets;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p1, v0, v1, v0, v1}, Lcom/metamoji/cm/EdgeInsets;-><init>(FFFF)V

    iput-object p1, p0, Lcom/metamoji/ui/TextUnitEdit$2;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    return-void
.end method
