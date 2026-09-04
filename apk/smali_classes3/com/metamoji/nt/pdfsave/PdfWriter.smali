.class public Lcom/metamoji/nt/pdfsave/PdfWriter;
.super Lcom/metamoji/nt/pdfsave/PdfStreamWriter;
.source "PdfSaveWriter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/pdfsave/PdfWriter$FlateStream;,
        Lcom/metamoji/nt/pdfsave/PdfWriter$PartialOutputStream;,
        Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;,
        Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u0016\u0018\u00002\u00020\u0001:\u0004*+,-B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u001cJ\u000e\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\"J\u0006\u0010\'\u001a\u00020\u0003J\u0008\u0010(\u001a\u00020\u001cH\u0002J\u0008\u0010)\u001a\u00020\u001cH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u001f\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfWriter;",
        "Lcom/metamoji/nt/pdfsave/PdfStreamWriter;",
        "stream",
        "Ljava/io/OutputStream;",
        "_xref",
        "Lcom/metamoji/nt/pdfsave/PdfXref;",
        "_encrypt",
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt;",
        "<init>",
        "(Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfXref;Lcom/metamoji/nt/pdfsave/PdfEncrypt;)V",
        "getStream",
        "()Ljava/io/OutputStream;",
        "_key",
        "Lcom/metamoji/nt/pdfsave/PdfEncryptKey;",
        "key",
        "getKey",
        "()Lcom/metamoji/nt/pdfsave/PdfEncryptKey;",
        "xref",
        "getXref",
        "()Lcom/metamoji/nt/pdfsave/PdfXref;",
        "current",
        "",
        "getCurrent",
        "()J",
        "beginObject",
        "",
        "objid",
        "endObject",
        "",
        "beginDictionary",
        "endDictionary",
        "_objid",
        "_objidLength",
        "_compress",
        "",
        "_start",
        "_length",
        "writeStreamProps",
        "compress",
        "beginStream",
        "endStream",
        "writeLengthObj",
        "PosStream",
        "PlainStream",
        "FlateStream",
        "PartialOutputStream",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _compress:Z

.field private final _encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

.field private _key:Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

.field private _length:J

.field private _objid:I

.field private _objidLength:I

.field private _start:J

.field private final _xref:Lcom/metamoji/nt/pdfsave/PdfXref;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfXref;Lcom/metamoji/nt/pdfsave/PdfEncrypt;)V
    .locals 1

    const-string/jumbo v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    instance-of v0, p1, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    :goto_0
    check-cast p1, Ljava/io/OutputStream;

    invoke-direct {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 23
    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    .line 24
    iput-object p3, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    return-void
.end method

.method public static final synthetic access$endStream(Lcom/metamoji/nt/pdfsave/PdfWriter;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endStream()V

    return-void
.end method

.method private final endStream()V
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getCurrent()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_length:J

    .line 145
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 146
    const-string v0, "endstream\n"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private final getXref()Lcom/metamoji/nt/pdfsave/PdfXref;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final writeLengthObj()V
    .locals 3

    .line 151
    iget v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_objidLength:I

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginObject(I)I

    .line 154
    iget-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_length:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endObject()V

    return-void
.end method


# virtual methods
.method public final beginDictionary()V
    .locals 1

    .line 105
    const-string v0, "<<"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final beginObject()I
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getXref()Lcom/metamoji/nt/pdfsave/PdfXref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginObject(I)I

    move-result v0

    return v0
.end method

.method public final beginObject(I)I
    .locals 4

    .line 75
    iput p1, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_objid:I

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_objidLength:I

    .line 79
    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getXref()Lcom/metamoji/nt/pdfsave/PdfXref;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getCurrent()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/nt/pdfsave/PdfXref;->setObjectOffset(IJ)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0 obj\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1, p1, v0}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->getKey(II)Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_key:Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    :cond_0
    return p1
.end method

.method public final beginStream()Ljava/io/OutputStream;
    .locals 5

    .line 130
    iget v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_objidLength:I

    if-eqz v0, :cond_3

    .line 132
    const-string/jumbo v0, "stream\n"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getCurrent()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_start:J

    .line 134
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfWriter$PartialOutputStream;

    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->get_stream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter$PartialOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    iget v3, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_objid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->filter(Ljava/io/OutputStream;II)Ljava/io/OutputStream;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    .line 136
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_compress:Z

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfWriter$FlateStream;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter$FlateStream;-><init>(Lcom/metamoji/nt/pdfsave/PdfWriter;Ljava/io/OutputStream;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0

    .line 139
    :cond_2
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;-><init>(Lcom/metamoji/nt/pdfsave/PdfWriter;Ljava/io/OutputStream;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0

    .line 130
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "writeStreamProps() not called"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final endDictionary()V
    .locals 1

    .line 109
    const-string v0, ">>\n"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final endObject()V
    .locals 1

    .line 95
    const-string v0, "endobj\n"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_objidLength:I

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->writeLengthObj()V

    :cond_0
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_key:Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    return-void
.end method

.method public final getCurrent()J
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->get_stream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.metamoji.nt.pdfsave.PdfWriter.PosStream"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getKey()Lcom/metamoji/nt/pdfsave/PdfEncryptKey;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_key:Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    return-object v0
.end method

.method public final getStream()Ljava/io/OutputStream;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->get_stream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final writeStreamProps(Z)V
    .locals 3

    .line 122
    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getXref()Lcom/metamoji/nt/pdfsave/PdfXref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_objidLength:I

    .line 123
    invoke-static {v0}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 124
    iput-boolean p1, p0, Lcom/metamoji/nt/pdfsave/PdfWriter;->_compress:Z

    if-eqz p1, :cond_0

    .line 125
    const-string p1, "/Filter/FlateDecode"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
