.class public final Lcom/metamoji/pdf/content/Instruction;
.super Ljava/lang/Object;
.source "Instruction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/content/Instruction$Companion;,
        Lcom/metamoji/pdf/content/Instruction$Flag;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u000b \u000c*\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R%\u0010\u0013\u001a\u0016\u0012\u0004\u0012\u00020\u000b \u000c*\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/pdf/content/Instruction;",
        "",
        "_op",
        "",
        "_args",
        "",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;)V",
        "_flags",
        "Ljava/util/EnumSet;",
        "Lcom/metamoji/pdf/content/Instruction$Flag;",
        "kotlin.jvm.PlatformType",
        "op",
        "getOp",
        "()Ljava/lang/String;",
        "args",
        "getArgs",
        "()Ljava/util/List;",
        "flags",
        "getFlags",
        "()Ljava/util/EnumSet;",
        "font",
        "getFont",
        "()Lcom/metamoji/pdf/core/PDFObj;",
        "setFont",
        "(Lcom/metamoji/pdf/core/PDFObj;)V",
        "Flag",
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
.field public static final Companion:Lcom/metamoji/pdf/content/Instruction$Companion;

.field private static final FLAG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/pdf/content/Instruction$Flag;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final _args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation
.end field

.field private final _flags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/pdf/content/Instruction$Flag;",
            ">;"
        }
    .end annotation
.end field

.field private final _op:Ljava/lang/String;

.field private font:Lcom/metamoji/pdf/core/PDFObj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/metamoji/pdf/content/Instruction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/content/Instruction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/pdf/content/Instruction;->Companion:Lcom/metamoji/pdf/content/Instruction$Companion;

    const/16 v0, 0x23

    .line 30
    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->STACK:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->FONT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "q"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->STACK:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->FONT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Q"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 33
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->COORD:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "cm"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->FONT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "gs"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 37
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DO:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Do"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 38
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->BI:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "BI"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 40
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "BT"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 41
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "ET"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 42
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Td"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 43
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "TD"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 44
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Tm"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 45
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "T*"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 47
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Tc"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 48
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Tw"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 49
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Tz"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 50
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "TL"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 51
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->FONT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Tf"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 52
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXTLAYOUT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Ts"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 54
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "Tj"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 55
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "\'"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 56
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "\""

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 57
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->TEXT:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "TJ"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 59
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->MARK:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "BDC"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 60
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->MARK:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "BMC"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 61
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->MARK:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "EMC"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 63
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "S"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 64
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 65
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "f"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 66
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "F"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 67
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "f*"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 68
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "B"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 69
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "B*"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 70
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "b"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 71
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "b*"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 72
    sget-object v1, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v1, Ljava/lang/Enum;

    sget-object v2, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    check-cast v2, Ljava/lang/Enum;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "n"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 29
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/content/Instruction;->FLAG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/content/Instruction;->_op:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/pdf/content/Instruction;->_args:Ljava/util/List;

    .line 20
    sget-object p2, Lcom/metamoji/pdf/content/Instruction;->FLAG_MAP:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/EnumSet;

    if-nez p1, :cond_0

    const-class p1, Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/metamoji/pdf/content/Instruction;->_flags:Ljava/util/EnumSet;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/pdf/content/Instruction;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getFLAG_MAP$cp()Ljava/util/Map;
    .locals 1

    .line 6
    sget-object v0, Lcom/metamoji/pdf/content/Instruction;->FLAG_MAP:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/metamoji/pdf/content/Instruction;->_args:Ljava/util/List;

    return-object v0
.end method

.method public final getFlags()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/pdf/content/Instruction$Flag;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/metamoji/pdf/content/Instruction;->_flags:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getFont()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/pdf/content/Instruction;->font:Lcom/metamoji/pdf/core/PDFObj;

    return-object v0
.end method

.method public final getOp()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/pdf/content/Instruction;->_op:Ljava/lang/String;

    return-object v0
.end method

.method public final setFont(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/pdf/content/Instruction;->font:Lcom/metamoji/pdf/core/PDFObj;

    return-void
.end method
