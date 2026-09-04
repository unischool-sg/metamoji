.class Lcom/metamoji/ui/TextUnitView$3;
.super Lcom/metamoji/un/text/model/UnitStyles;
.source "TextUnitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/TextUnitView;->createTextModelForChat(Ljava/lang/String;)Lcom/metamoji/un/text/model/TextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 183
    invoke-direct {p0}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitView$3;->fontFamilyName:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    .line 185
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitView$3;->fontSize:Ljava/lang/Float;

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 186
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitView$3;->charColor:Ljava/lang/Integer;

    .line 187
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitView$3;->bgColor:Ljava/lang/Integer;

    const v0, 0x3f99999a    # 1.2f

    .line 188
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitView$3;->lineHeight:Ljava/lang/Float;

    .line 189
    sget-object v0, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitView$3;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 190
    sget-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitView$3;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 191
    new-instance v0, Lcom/metamoji/cm/EdgeInsets;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/metamoji/cm/EdgeInsets;-><init>(FFFF)V

    iput-object v0, p0, Lcom/metamoji/ui/TextUnitView$3;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    return-void
.end method
