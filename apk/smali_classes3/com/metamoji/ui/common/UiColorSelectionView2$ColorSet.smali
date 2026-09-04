.class public Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorSet"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field colors:[I

.field colors2:[I

.field key:Ljava/lang/String;

.field name:Ljava/lang/String;

.field type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    const-class v0, Lcom/metamoji/ui/common/UiColorSelectionView2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    .line 161
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    const/4 v0, 0x2

    .line 162
    invoke-static {v0}, Lcom/metamoji/nt/NtInkManager;->getColorTypeId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 163
    :goto_0
    array-length v1, p3

    if-ge v2, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->name:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I[I)V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    .line 180
    iput-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    .line 181
    array-length p4, p3

    new-array p4, p4, [I

    iput-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    const/4 p4, 0x0

    .line 182
    :goto_0
    array-length v0, p3

    if-ge p4, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    const/4 v1, 0x1

    aput v1, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->name:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I[I[I)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    .line 201
    iput-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    .line 202
    iput-object p5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    .line 203
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->name:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    return-void
.end method
