.class public abstract Lcom/metamoji/pdf/core/PDFObj;
.super Ljava/lang/Object;
.source "PDFObj.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/core/PDFObj$Companion;,
        Lcom/metamoji/pdf/core/PDFObj$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/metamoji/pdf/core/PDFObj;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002+,B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0000H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u0017J\u0011\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0014H\u0086\u0002J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0014H\u0016J\u0010\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0014H\u0016J\u0011\u0010\u001a\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u000cH\u0086\u0002J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u000cH\u0016J\u000f\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00000\'H\u0096\u0002J\u0012\u0010(\u001a\u00020)2\u0008\u0008\u0002\u0010*\u001a\u00020\u000cH\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0018\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u001f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006-"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFObj;",
        "",
        "<init>",
        "()V",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "resolve",
        "boolVal",
        "",
        "intVal",
        "",
        "longVal",
        "",
        "doubleVal",
        "",
        "stringVal",
        "",
        "name",
        "",
        "def",
        "floatVal",
        "",
        "isNull",
        "()Z",
        "get",
        "key",
        "getUnresolved",
        "contains",
        "dic",
        "",
        "getDic",
        "()Ljava/util/Map;",
        "count",
        "getCount",
        "()I",
        "index",
        "iterator",
        "",
        "openStream",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "exclude",
        "Type",
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
.field public static final Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

.field private static final False:Lcom/metamoji/pdf/core/PDFObj;

.field public static final GET_PROPER_STREAM:I = -0x1

.field public static final GET_RAW_STREAM:I = -0x2

.field private static final Null:Lcom/metamoji/pdf/core/PDFObj;

.field private static final True:Lcom/metamoji/pdf/core/PDFObj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/pdf/core/PDFObj$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFObj$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    .line 39
    new-instance v0, Lcom/metamoji/pdf/core/PDFNull;

    invoke-direct {v0}, Lcom/metamoji/pdf/core/PDFNull;-><init>()V

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj;->Null:Lcom/metamoji/pdf/core/PDFObj;

    .line 40
    new-instance v0, Lcom/metamoji/pdf/core/PDFBool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFBool;-><init>(Z)V

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj;->True:Lcom/metamoji/pdf/core/PDFObj;

    .line 41
    new-instance v0, Lcom/metamoji/pdf/core/PDFBool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFBool;-><init>(Z)V

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    sput-object v0, Lcom/metamoji/pdf/core/PDFObj;->False:Lcom/metamoji/pdf/core/PDFObj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFalse$cp()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj;->False:Lcom/metamoji/pdf/core/PDFObj;

    return-object v0
.end method

.method public static final synthetic access$getNull$cp()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj;->Null:Lcom/metamoji/pdf/core/PDFObj;

    return-object v0
.end method

.method public static final synthetic access$getTrue$cp()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj;->True:Lcom/metamoji/pdf/core/PDFObj;

    return-object v0
.end method

.method public static synthetic openStream$default(Lcom/metamoji/pdf/core/PDFObj;IILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/core/PDFObj;->openStream(I)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openStream"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public boolVal()Z
    .locals 2

    .line 52
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "bad cast"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final boolVal(Z)Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->boolVal()Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string v0, "object is not a dictionary"

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doubleVal()D
    .locals 2

    .line 55
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "bad cast"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final doubleVal(D)D
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->doubleVal()D

    move-result-wide p1

    return-wide p1
.end method

.method public final floatVal()F
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->doubleVal()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final floatVal(F)F
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result p1

    return p1
.end method

.method public final get(I)Lcom/metamoji/pdf/core/PDFObj;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/core/PDFObj;->getUnresolved(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->resolve()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/core/PDFObj;->getUnresolved(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->resolve()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 79
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "object is not an array1"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDic()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType()Lcom/metamoji/pdf/core/PDFObj$Type;
.end method

.method public getUnresolved(I)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 81
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string v0, "object is not an array2"

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUnresolved(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string v0, "object is not a dictionary"

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public intVal()I
    .locals 2

    .line 53
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "bad cast"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final intVal(I)I
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result p1

    return p1
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "object is not an array3"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longVal()J
    .locals 2

    .line 54
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "bad cast"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final longVal(J)J
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->longVal()J

    move-result-wide p1

    return-wide p1
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "bad cast"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final name(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public openStream(I)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 1

    .line 85
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string v0, "object is not a stream"

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolve()Lcom/metamoji/pdf/core/PDFObj;
    .locals 0

    return-object p0
.end method

.method public stringVal()[B
    .locals 2

    .line 56
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "bad cast"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final stringVal([B)[B
    .locals 1

    const-string v0, "def"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object p1

    return-object p1
.end method
