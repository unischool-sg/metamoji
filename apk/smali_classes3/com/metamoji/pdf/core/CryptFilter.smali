.class public abstract Lcom/metamoji/pdf/core/CryptFilter;
.super Ljava/lang/Object;
.source "CryptFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/core/CryptFilter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bH&J\u0018\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015H&J\u001a\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H&R\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000bX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/CryptFilter;",
        "",
        "obj",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFObj;)V",
        "_authEvent",
        "",
        "get_authEvent",
        "()Ljava/lang/String;",
        "_length",
        "",
        "get_length",
        "()I",
        "locked",
        "",
        "getLocked",
        "()Z",
        "setKey",
        "",
        "key",
        "",
        "getCryptoKey",
        "id",
        "gen",
        "decrypt",
        "data",
        "filter",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "upper",
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
.field public static final Companion:Lcom/metamoji/pdf/core/CryptFilter$Companion;

.field private static final SALT:[B


# instance fields
.field private final _authEvent:Ljava/lang/String;

.field private final _length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/pdf/core/CryptFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/CryptFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/pdf/core/CryptFilter;->Companion:Lcom/metamoji/pdf/core/CryptFilter$Companion;

    .line 37
    const-string/jumbo v0, "sAlT"

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/pdf/core/CryptFilter;->SALT:[B

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 2

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "AuthEvent"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "DocOpen"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/pdf/core/CryptFilter;->_authEvent:Ljava/lang/String;

    .line 7
    const-string v0, "Length"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result p1

    iput p1, p0, Lcom/metamoji/pdf/core/CryptFilter;->_length:I

    return-void
.end method

.method public static final synthetic access$getSALT$cp()[B
    .locals 1

    .line 5
    sget-object v0, Lcom/metamoji/pdf/core/CryptFilter;->SALT:[B

    return-object v0
.end method


# virtual methods
.method public abstract decrypt([B[B)[B
.end method

.method public abstract filter(Lcom/metamoji/pdf/core/PDFInputStream;[B)Lcom/metamoji/pdf/core/PDFInputStream;
.end method

.method public abstract getCryptoKey(II)[B
.end method

.method public abstract getLocked()Z
.end method

.method protected final get_authEvent()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/metamoji/pdf/core/CryptFilter;->_authEvent:Ljava/lang/String;

    return-object v0
.end method

.method protected final get_length()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/metamoji/pdf/core/CryptFilter;->_length:I

    return v0
.end method

.method public abstract setKey([B)V
.end method
