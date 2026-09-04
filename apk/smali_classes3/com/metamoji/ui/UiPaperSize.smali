.class public Lcom/metamoji/ui/UiPaperSize;
.super Ljava/lang/Object;
.source "UiPaperSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/UiPaperSize$PaperSize;
    }
.end annotation


# static fields
.field public static PAPER_KIND_MAX:I = 0x8


# instance fields
.field private _paperSizesLandscape:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

.field private _paperSizesPortrait:[Lcom/metamoji/ui/UiPaperSize$PaperSize;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-direct {p0}, Lcom/metamoji/ui/UiPaperSize;->GetPaperListPortrait()[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesPortrait:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    .line 33
    invoke-direct {p0}, Lcom/metamoji/ui/UiPaperSize;->GetPaperListLandscape()[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesLandscape:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    return-void
.end method

.method private GetPaperListLandscape()[Lcom/metamoji/ui/UiPaperSize$PaperSize;
    .locals 9

    .line 159
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    sget v1, Lcom/metamoji/ui/UiPaperSize;->PAPER_KIND_MAX:I

    new-array v1, v1, [Lcom/metamoji/ui/UiPaperSize$PaperSize;

    const/4 v2, 0x0

    move v3, v2

    .line 163
    :goto_0
    sget v4, Lcom/metamoji/ui/UiPaperSize;->PAPER_KIND_MAX:I

    if-ge v3, v4, :cond_0

    .line 164
    new-instance v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/UiPaperSize$PaperSize;-><init>(Lcom/metamoji/ui/UiPaperSize;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_0
    aget-object v3, v1, v2

    iput v2, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 171
    aget-object v3, v1, v2

    const/high16 v4, 0x440b0000    # 556.0f

    iput v4, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 172
    aget-object v3, v1, v2

    const v4, 0x43d08000    # 417.0f

    iput v4, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 173
    aget-object v3, v1, v2

    const v4, 0x44528000    # 842.0f

    iput v4, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 174
    aget-object v3, v1, v2

    const v5, 0x4414c000    # 595.0f

    iput v5, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 175
    aget-object v3, v1, v2

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_Presentation_4_3_Landscape:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 176
    aget-object v3, v1, v2

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_Presentation_4_3:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 177
    aget-object v3, v1, v2

    iput-boolean v2, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v3, 0x1

    .line 182
    aget-object v6, v1, v3

    iput v3, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 183
    aget-object v6, v1, v3

    const/high16 v7, 0x44180000    # 608.0f

    iput v7, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 184
    aget-object v6, v1, v3

    const/high16 v7, 0x43ab0000    # 342.0f

    iput v7, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 185
    aget-object v6, v1, v3

    iput v4, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 186
    aget-object v6, v1, v3

    iput v5, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 187
    aget-object v6, v1, v3

    sget v7, Lcom/metamoji/noteanytime/R$string;->PaperSize_Presentation_16_9_Landscape:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 188
    aget-object v6, v1, v3

    sget v7, Lcom/metamoji/noteanytime/R$string;->PaperSize_Presentation_16_9:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 189
    aget-object v3, v1, v3

    iput-boolean v2, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v3, 0x2

    .line 194
    aget-object v6, v1, v3

    iput v3, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 195
    aget-object v6, v1, v3

    iput v4, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 196
    aget-object v6, v1, v3

    iput v5, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 197
    aget-object v6, v1, v3

    iput v4, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 198
    aget-object v6, v1, v3

    iput v5, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 199
    aget-object v5, v1, v3

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4_Landscape:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 200
    aget-object v5, v1, v3

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 201
    aget-object v3, v1, v3

    iput-boolean v2, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v3, 0x3

    .line 206
    aget-object v5, v1, v3

    iput v3, v5, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 207
    aget-object v5, v1, v3

    const v6, 0x4494e000    # 1191.0f

    iput v6, v5, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 208
    aget-object v5, v1, v3

    iput v4, v5, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 209
    aget-object v5, v1, v3

    iput v6, v5, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 210
    aget-object v5, v1, v3

    iput v4, v5, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 211
    aget-object v4, v1, v3

    sget v5, Lcom/metamoji/noteanytime/R$string;->Papersize_A3_Landscape:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 212
    aget-object v4, v1, v3

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_A3:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 213
    aget-object v3, v1, v3

    iput-boolean v2, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v3, 0x4

    .line 218
    aget-object v4, v1, v3

    iput v3, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 219
    aget-object v4, v1, v3

    const v5, 0x44364000    # 729.0f

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 220
    aget-object v4, v1, v3

    const/high16 v6, 0x44010000    # 516.0f

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 221
    aget-object v4, v1, v3

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 222
    aget-object v4, v1, v3

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 223
    aget-object v4, v1, v3

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4_Landscape:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/metamoji/noteanytime/R$string;->PaperSize_B5:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 224
    aget-object v4, v1, v3

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_B5:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 225
    aget-object v3, v1, v3

    iput-boolean v2, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v3, 0x5

    .line 230
    aget-object v4, v1, v3

    iput v3, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 231
    aget-object v4, v1, v3

    const/high16 v6, 0x44810000    # 1032.0f

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 232
    aget-object v4, v1, v3

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 233
    aget-object v4, v1, v3

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 234
    aget-object v4, v1, v3

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 235
    aget-object v4, v1, v3

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4_Landscape:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/metamoji/noteanytime/R$string;->PaperSize_B4:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 236
    aget-object v4, v1, v3

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_B4:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 237
    aget-object v3, v1, v3

    iput-boolean v2, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v3, 0x6

    .line 242
    aget-object v4, v1, v3

    iput v3, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 243
    aget-object v4, v1, v3

    const/high16 v5, 0x44460000    # 792.0f

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 244
    aget-object v4, v1, v3

    const/high16 v6, 0x44190000    # 612.0f

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 245
    aget-object v4, v1, v3

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 246
    aget-object v4, v1, v3

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 247
    aget-object v4, v1, v3

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_Letter_Landscape:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 248
    aget-object v4, v1, v3

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_Letter:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 249
    aget-object v3, v1, v3

    iput-boolean v2, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v3, 0x7

    .line 254
    aget-object v4, v1, v3

    iput v3, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 255
    aget-object v4, v1, v3

    const/high16 v5, 0x43d20000    # 420.0f

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 256
    aget-object v4, v1, v3

    const v6, 0x438d8000    # 283.0f

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 257
    aget-object v4, v1, v3

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 258
    aget-object v4, v1, v3

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 259
    aget-object v4, v1, v3

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_Post_Landscape:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 260
    aget-object v4, v1, v3

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_Post:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 261
    aget-object v0, v1, v3

    iput-boolean v2, v0, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    return-object v1
.end method

.method private GetPaperListPortrait()[Lcom/metamoji/ui/UiPaperSize$PaperSize;
    .locals 9

    .line 49
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    sget v1, Lcom/metamoji/ui/UiPaperSize;->PAPER_KIND_MAX:I

    new-array v1, v1, [Lcom/metamoji/ui/UiPaperSize$PaperSize;

    const/4 v2, 0x0

    move v3, v2

    .line 53
    :goto_0
    sget v4, Lcom/metamoji/ui/UiPaperSize;->PAPER_KIND_MAX:I

    if-ge v3, v4, :cond_0

    .line 54
    new-instance v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/UiPaperSize$PaperSize;-><init>(Lcom/metamoji/ui/UiPaperSize;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    aget-object v3, v1, v2

    iput v2, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 61
    aget-object v3, v1, v2

    const v4, 0x43d08000    # 417.0f

    iput v4, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 62
    aget-object v3, v1, v2

    const/high16 v4, 0x440b0000    # 556.0f

    iput v4, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 63
    aget-object v3, v1, v2

    const v4, 0x4414c000    # 595.0f

    iput v4, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 64
    aget-object v3, v1, v2

    const v5, 0x44528000    # 842.0f

    iput v5, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 65
    aget-object v3, v1, v2

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_Presentation_4_3_Portrait:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 66
    aget-object v3, v1, v2

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_Presentation_4_3:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 67
    aget-object v2, v1, v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    .line 72
    aget-object v2, v1, v3

    iput v3, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 73
    aget-object v2, v1, v3

    const/high16 v6, 0x43ab0000    # 342.0f

    iput v6, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 74
    aget-object v2, v1, v3

    const/high16 v6, 0x44180000    # 608.0f

    iput v6, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 75
    aget-object v2, v1, v3

    iput v4, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 76
    aget-object v2, v1, v3

    iput v5, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 77
    aget-object v2, v1, v3

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_Presentation_16_9_Portrait:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 78
    aget-object v2, v1, v3

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_Presentation_16_9:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 79
    aget-object v2, v1, v3

    iput-boolean v3, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v2, 0x2

    .line 84
    aget-object v6, v1, v2

    iput v2, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 85
    aget-object v6, v1, v2

    iput v4, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 86
    aget-object v6, v1, v2

    iput v5, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 87
    aget-object v6, v1, v2

    iput v4, v6, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 88
    aget-object v4, v1, v2

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 89
    aget-object v4, v1, v2

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4_Portrait:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 90
    aget-object v4, v1, v2

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 91
    aget-object v2, v1, v2

    iput-boolean v3, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v2, 0x3

    .line 96
    aget-object v4, v1, v2

    iput v2, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 97
    aget-object v4, v1, v2

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 98
    aget-object v4, v1, v2

    const v6, 0x4494e000    # 1191.0f

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 99
    aget-object v4, v1, v2

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 100
    aget-object v4, v1, v2

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 101
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->Papersize_A3_Portrait:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 102
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_A3:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 103
    aget-object v2, v1, v2

    iput-boolean v3, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v2, 0x4

    .line 108
    aget-object v4, v1, v2

    iput v2, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 109
    aget-object v4, v1, v2

    const/high16 v5, 0x44010000    # 516.0f

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 110
    aget-object v4, v1, v2

    const v6, 0x44364000    # 729.0f

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 111
    aget-object v4, v1, v2

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 112
    aget-object v4, v1, v2

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 113
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4_Portrait:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/metamoji/noteanytime/R$string;->PaperSize_B5:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 114
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_B5:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 115
    aget-object v2, v1, v2

    iput-boolean v3, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v2, 0x5

    .line 120
    aget-object v4, v1, v2

    iput v2, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 121
    aget-object v4, v1, v2

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 122
    aget-object v4, v1, v2

    const/high16 v5, 0x44810000    # 1032.0f

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 123
    aget-object v4, v1, v2

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 124
    aget-object v4, v1, v2

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 125
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4_Portrait:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/metamoji/noteanytime/R$string;->PaperSize_A4:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/metamoji/noteanytime/R$string;->PaperSize_B4:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 126
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_B4:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 127
    aget-object v2, v1, v2

    iput-boolean v3, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v2, 0x6

    .line 132
    aget-object v4, v1, v2

    iput v2, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 133
    aget-object v4, v1, v2

    const/high16 v5, 0x44190000    # 612.0f

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 134
    aget-object v4, v1, v2

    const/high16 v6, 0x44460000    # 792.0f

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 135
    aget-object v4, v1, v2

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 136
    aget-object v4, v1, v2

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 137
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_Letter_Portrait:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 138
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_Letter:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 139
    aget-object v2, v1, v2

    iput-boolean v3, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    const/4 v2, 0x7

    .line 144
    aget-object v4, v1, v2

    iput v2, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->id:I

    .line 145
    aget-object v4, v1, v2

    const v5, 0x438d8000    # 283.0f

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    .line 146
    aget-object v4, v1, v2

    const/high16 v6, 0x43d20000    # 420.0f

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    .line 147
    aget-object v4, v1, v2

    iput v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printWidth:F

    .line 148
    aget-object v4, v1, v2

    iput v6, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->printHeight:F

    .line 149
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_Post_Portrait:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->name:Ljava/lang/String;

    .line 150
    aget-object v4, v1, v2

    sget v5, Lcom/metamoji/noteanytime/R$string;->PaperSize_Post:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    .line 151
    aget-object v0, v1, v2

    iput-boolean v3, v0, Lcom/metamoji/ui/UiPaperSize$PaperSize;->portrait:Z

    return-object v1
.end method


# virtual methods
.method public GetIndex(Lcom/metamoji/cm/SizeF;Z)I
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p2, :cond_1

    .line 270
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesPortrait:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 271
    aget-object p2, p2, v0

    iget p2, p2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    sub-float/2addr p2, v1

    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_0

    iget p2, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesPortrait:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    add-float/2addr v2, v1

    cmpg-float p2, p2, v2

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesPortrait:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    aget-object p2, p2, v0

    iget p2, p2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    sub-float/2addr p2, v1

    iget v2, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_0

    iget p2, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesPortrait:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    add-float/2addr v2, v1

    cmpg-float p2, p2, v2

    if-gez p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesLandscape:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 280
    aget-object p2, p2, v0

    iget p2, p2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    sub-float/2addr p2, v1

    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_2

    iget p2, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesLandscape:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->width:F

    add-float/2addr v2, v1

    cmpg-float p2, p2, v2

    if-gez p2, :cond_2

    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesLandscape:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    aget-object p2, p2, v0

    iget p2, p2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    sub-float/2addr p2, v1

    iget v2, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_2

    iget p2, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesLandscape:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/metamoji/ui/UiPaperSize$PaperSize;->height:F

    add-float/2addr v2, v1

    cmpg-float p2, p2, v2

    if-gez p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public GetPaperSize(IZ)Lcom/metamoji/ui/UiPaperSize$PaperSize;
    .locals 1

    .line 37
    sget v0, Lcom/metamoji/ui/UiPaperSize;->PAPER_KIND_MAX:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 40
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesPortrait:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    aget-object p1, p2, p1

    return-object p1

    .line 43
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSize;->_paperSizesLandscape:[Lcom/metamoji/ui/UiPaperSize$PaperSize;

    aget-object p1, p2, p1

    return-object p1
.end method
