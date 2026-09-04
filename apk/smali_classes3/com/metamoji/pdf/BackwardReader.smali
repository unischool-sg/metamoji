.class final Lcom/metamoji/pdf/BackwardReader;
.super Ljava/lang/Object;
.source "PDFDocument.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/BackwardReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u000bH\u0002J\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0018\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/pdf/BackwardReader;",
        "",
        "_file",
        "Lcom/metamoji/pdf/IPDFFile;",
        "<init>",
        "(Lcom/metamoji/pdf/IPDFFile;)V",
        "get_file",
        "()Lcom/metamoji/pdf/IPDFFile;",
        "_top",
        "",
        "_valid",
        "",
        "_pos",
        "_buffer",
        "",
        "_unget",
        "getChar",
        "ungetChar",
        "",
        "ch",
        "isLineBreak",
        "",
        "backLine",
        "Lkotlin/Pair;",
        "pos",
        "getPos",
        "()J",
        "Companion",
        "pdf"
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
.field public static final Companion:Lcom/metamoji/pdf/BackwardReader$Companion;

.field public static final EOF:I = -0x1

.field public static final LINE_BREAK:Ljava/lang/String; = "\r\n \t\u0000"


# instance fields
.field private _buffer:[B

.field private final _file:Lcom/metamoji/pdf/IPDFFile;

.field private _pos:I

.field private _top:J

.field private _unget:I

.field private _valid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/pdf/BackwardReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/BackwardReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/pdf/BackwardReader;->Companion:Lcom/metamoji/pdf/BackwardReader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/pdf/IPDFFile;)V
    .locals 2

    const-string v0, "_file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/BackwardReader;->_file:Lcom/metamoji/pdf/IPDFFile;

    const/16 v0, 0x100

    .line 687
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/metamoji/pdf/BackwardReader;->_buffer:[B

    .line 702
    invoke-interface {p1}, Lcom/metamoji/pdf/IPDFFile;->getSize()J

    move-result-wide v0

    .line 703
    invoke-interface {p1, v0, v1}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    .line 704
    iput-wide v0, p0, Lcom/metamoji/pdf/BackwardReader;->_top:J

    const/4 p1, 0x0

    .line 705
    iput p1, p0, Lcom/metamoji/pdf/BackwardReader;->_valid:I

    .line 706
    iput p1, p0, Lcom/metamoji/pdf/BackwardReader;->_pos:I

    const/4 p1, -0x1

    .line 707
    iput p1, p0, Lcom/metamoji/pdf/BackwardReader;->_unget:I

    return-void
.end method

.method private final isLineBreak(I)Z
    .locals 7

    .line 736
    const-string v0, "\r\n \t\u0000"

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    int-to-char v2, p1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final backLine()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Lcom/metamoji/pdf/BackwardReader;->getChar()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-wide/16 v2, -0x1

    .line 741
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 742
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/metamoji/pdf/BackwardReader;->isLineBreak(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/metamoji/pdf/BackwardReader;->getChar()I

    move-result v0

    goto :goto_0

    .line 745
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/BackwardReader;->ungetChar(I)V

    .line 749
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/pdf/BackwardReader;->getChar()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 750
    invoke-direct {p0, v0}, Lcom/metamoji/pdf/BackwardReader;->isLineBreak(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 751
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/BackwardReader;->ungetChar(I)V

    .line 752
    invoke-virtual {p0}, Lcom/metamoji/pdf/BackwardReader;->getPos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final getChar()I
    .locals 6

    .line 711
    iget v0, p0, Lcom/metamoji/pdf/BackwardReader;->_unget:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 713
    iput v1, p0, Lcom/metamoji/pdf/BackwardReader;->_unget:I

    return v0

    .line 717
    :cond_0
    iget v0, p0, Lcom/metamoji/pdf/BackwardReader;->_pos:I

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/metamoji/pdf/BackwardReader;->_buffer:[B

    add-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/pdf/BackwardReader;->_pos:I

    aget-byte v0, v2, v0

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFObjKt;->ubyte(B)I

    move-result v0

    return v0

    .line 719
    :cond_1
    iget-wide v2, p0, Lcom/metamoji/pdf/BackwardReader;->_top:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return v1

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/metamoji/pdf/BackwardReader;->_buffer:[B

    array-length v0, v0

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 723
    iget-wide v2, p0, Lcom/metamoji/pdf/BackwardReader;->_top:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/metamoji/pdf/BackwardReader;->_top:J

    .line 724
    iget-object v4, p0, Lcom/metamoji/pdf/BackwardReader;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v4, v2, v3}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    .line 725
    iget-object v2, p0, Lcom/metamoji/pdf/BackwardReader;->_file:Lcom/metamoji/pdf/IPDFFile;

    iget-object v3, p0, Lcom/metamoji/pdf/BackwardReader;->_buffer:[B

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Lcom/metamoji/pdf/IPDFFile;->read([BII)I

    move-result v2

    if-ge v2, v0, :cond_3

    return v1

    .line 727
    :cond_3
    iput v0, p0, Lcom/metamoji/pdf/BackwardReader;->_valid:I

    .line 729
    iget-object v2, p0, Lcom/metamoji/pdf/BackwardReader;->_buffer:[B

    add-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/pdf/BackwardReader;->_pos:I

    aget-byte v0, v2, v0

    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFObjKt;->ubyte(B)I

    move-result v0

    return v0
.end method

.method public final getPos()J
    .locals 4

    .line 759
    iget-wide v0, p0, Lcom/metamoji/pdf/BackwardReader;->_top:J

    iget v2, p0, Lcom/metamoji/pdf/BackwardReader;->_pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 760
    iget v2, p0, Lcom/metamoji/pdf/BackwardReader;->_unget:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public final get_file()Lcom/metamoji/pdf/IPDFFile;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/metamoji/pdf/BackwardReader;->_file:Lcom/metamoji/pdf/IPDFFile;

    return-object v0
.end method

.method public final ungetChar(I)V
    .locals 0

    .line 733
    iput p1, p0, Lcom/metamoji/pdf/BackwardReader;->_unget:I

    return-void
.end method
