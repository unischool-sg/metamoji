.class public final Lio/github/toyota32k/utils/android/RGB;
.super Ljava/lang/Object;
.source "ColorExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/android/RGB$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000  2\u00020\u0001:\u0001 B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0013\u0008\u0016\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0007\u0010\u000cJ\u0008\u0010\u0012\u001a\u00020\u0003H\u0007J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0000J\u0006\u0010\u0015\u001a\u00020\u0000J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u001d\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u0010\u001e\u001a\u00020\u001fH\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/RGB;",
        "",
        "r",
        "",
        "g",
        "b",
        "a",
        "<init>",
        "(IIII)V",
        "rgba",
        "(I)V",
        "",
        "(J)V",
        "getR",
        "()I",
        "getG",
        "getB",
        "getA",
        "toColor",
        "brend",
        "other",
        "grayScale",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "hashCode",
        "toString",
        "",
        "Companion",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/github/toyota32k/utils/android/RGB$Companion;

.field private static final black:Lio/github/toyota32k/utils/android/RGB;

.field private static final white:Lio/github/toyota32k/utils/android/RGB;


# instance fields
.field private final a:I

.field private final b:I

.field private final g:I

.field private final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/github/toyota32k/utils/android/RGB$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/android/RGB$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/utils/android/RGB;->Companion:Lio/github/toyota32k/utils/android/RGB$Companion;

    .line 37
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-direct {v0, v1, v1, v1, v2}, Lio/github/toyota32k/utils/android/RGB;-><init>(IIII)V

    sput-object v0, Lio/github/toyota32k/utils/android/RGB;->black:Lio/github/toyota32k/utils/android/RGB;

    .line 38
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, v2, v2, v2, v2}, Lio/github/toyota32k/utils/android/RGB;-><init>(IIII)V

    sput-object v0, Lio/github/toyota32k/utils/android/RGB;->white:Lio/github/toyota32k/utils/android/RGB;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lio/github/toyota32k/utils/android/RGB;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    iput p2, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    iput p3, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    iput p4, p0, Lio/github/toyota32k/utils/android/RGB;->a:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    long-to-int p1, p1

    .line 9
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/android/RGB;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getBlack$cp()Lio/github/toyota32k/utils/android/RGB;
    .locals 1

    .line 7
    sget-object v0, Lio/github/toyota32k/utils/android/RGB;->black:Lio/github/toyota32k/utils/android/RGB;

    return-object v0
.end method

.method public static final synthetic access$getWhite$cp()Lio/github/toyota32k/utils/android/RGB;
    .locals 1

    .line 7
    sget-object v0, Lio/github/toyota32k/utils/android/RGB;->white:Lio/github/toyota32k/utils/android/RGB;

    return-object v0
.end method

.method public static synthetic copy$default(Lio/github/toyota32k/utils/android/RGB;IIIIILjava/lang/Object;)Lio/github/toyota32k/utils/android/RGB;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lio/github/toyota32k/utils/android/RGB;->a:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/github/toyota32k/utils/android/RGB;->copy(IIII)Lio/github/toyota32k/utils/android/RGB;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final brend(Lio/github/toyota32k/utils/android/RGB;)Lio/github/toyota32k/utils/android/RGB;
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    .line 18
    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    iget v2, p1, Lio/github/toyota32k/utils/android/RGB;->r:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 19
    iget v2, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    iget v3, p1, Lio/github/toyota32k/utils/android/RGB;->g:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 20
    iget v3, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    iget p1, p1, Lio/github/toyota32k/utils/android/RGB;->b:I

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    const/16 p1, 0xff

    .line 17
    invoke-direct {v0, v1, v2, v3, p1}, Lio/github/toyota32k/utils/android/RGB;-><init>(IIII)V

    return-object v0
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->a:I

    return v0
.end method

.method public final copy(IIII)Lio/github/toyota32k/utils/android/RGB;
    .locals 1

    new-instance v0, Lio/github/toyota32k/utils/android/RGB;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/github/toyota32k/utils/android/RGB;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/toyota32k/utils/android/RGB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/toyota32k/utils/android/RGB;

    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    iget v3, p1, Lio/github/toyota32k/utils/android/RGB;->r:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    iget v3, p1, Lio/github/toyota32k/utils/android/RGB;->g:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    iget v3, p1, Lio/github/toyota32k/utils/android/RGB;->b:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->a:I

    iget p1, p1, Lio/github/toyota32k/utils/android/RGB;->a:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getA()I
    .locals 1

    .line 7
    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->a:I

    return v0
.end method

.method public final getB()I
    .locals 1

    .line 7
    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    return v0
.end method

.method public final getG()I
    .locals 1

    .line 7
    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    return v0
.end method

.method public final getR()I
    .locals 1

    .line 7
    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    return v0
.end method

.method public final grayScale()Lio/github/toyota32k/utils/android/RGB;
    .locals 6

    .line 25
    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    int-to-double v0, v0

    const-wide v2, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v0, v2

    iget v2, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    int-to-double v2, v2

    const-wide v4, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    int-to-double v2, v2

    const-wide v4, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 26
    new-instance v1, Lio/github/toyota32k/utils/android/RGB;

    iget v2, p0, Lio/github/toyota32k/utils/android/RGB;->a:I

    invoke-direct {v1, v0, v0, v0, v2}, Lio/github/toyota32k/utils/android/RGB;-><init>(IIII)V

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toColor()I
    .locals 4

    .line 13
    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->a:I

    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    iget v2, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    iget v3, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lio/github/toyota32k/utils/android/RGB;->r:I

    iget v1, p0, Lio/github/toyota32k/utils/android/RGB;->g:I

    iget v2, p0, Lio/github/toyota32k/utils/android/RGB;->b:I

    iget v3, p0, Lio/github/toyota32k/utils/android/RGB;->a:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RGB(r="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", g="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
