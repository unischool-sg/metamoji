.class public final Lcom/metamoji/pdf/PDFAnnotation$Flag;
.super Ljava/lang/Object;
.source "PDFAnnotation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/PDFAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/PDFAnnotation$Flag$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0011\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0000H\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/pdf/PDFAnnotation$Flag;",
        "",
        "_bits",
        "",
        "<init>",
        "(I)V",
        "contains",
        "",
        "flag",
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
.field public static final Companion:Lcom/metamoji/pdf/PDFAnnotation$Flag$Companion;

.field private static final HIDDEN:Lcom/metamoji/pdf/PDFAnnotation$Flag;

.field private static final INVISIBLE:Lcom/metamoji/pdf/PDFAnnotation$Flag;

.field private static final LOCKED:Lcom/metamoji/pdf/PDFAnnotation$Flag;

.field private static final LOCKEDCONTENTS:Lcom/metamoji/pdf/PDFAnnotation$Flag;

.field private static final NOROTATE:Lcom/metamoji/pdf/PDFAnnotation$Flag;

.field private static final NOVIEW:Lcom/metamoji/pdf/PDFAnnotation$Flag;

.field private static final NOZOOM:Lcom/metamoji/pdf/PDFAnnotation$Flag;

.field private static final PRINT:Lcom/metamoji/pdf/PDFAnnotation$Flag;

.field private static final READONLY:Lcom/metamoji/pdf/PDFAnnotation$Flag;

.field private static final TOOGLENOVIEW:Lcom/metamoji/pdf/PDFAnnotation$Flag;


# instance fields
.field private final _bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->Companion:Lcom/metamoji/pdf/PDFAnnotation$Flag$Companion;

    .line 21
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->INVISIBLE:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    .line 22
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->HIDDEN:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    .line 23
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->PRINT:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    .line 24
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->NOZOOM:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    .line 25
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->NOROTATE:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    .line 26
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->NOVIEW:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    .line 27
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->READONLY:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    .line 28
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->LOCKED:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    .line 29
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->TOOGLENOVIEW:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    .line 30
    new-instance v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFAnnotation$Flag;-><init>(I)V

    sput-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->LOCKEDCONTENTS:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->_bits:I

    return-void
.end method

.method public static final synthetic access$getHIDDEN$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->HIDDEN:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public static final synthetic access$getINVISIBLE$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->INVISIBLE:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public static final synthetic access$getLOCKED$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->LOCKED:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public static final synthetic access$getLOCKEDCONTENTS$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->LOCKEDCONTENTS:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public static final synthetic access$getNOROTATE$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->NOROTATE:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public static final synthetic access$getNOVIEW$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->NOVIEW:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public static final synthetic access$getNOZOOM$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->NOZOOM:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public static final synthetic access$getPRINT$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->PRINT:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public static final synthetic access$getREADONLY$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->READONLY:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method

.method public static final synthetic access$getTOOGLENOVIEW$cp()Lcom/metamoji/pdf/PDFAnnotation$Flag;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->TOOGLENOVIEW:Lcom/metamoji/pdf/PDFAnnotation$Flag;

    return-object v0
.end method


# virtual methods
.method public final contains(Lcom/metamoji/pdf/PDFAnnotation$Flag;)Z
    .locals 1

    const-string v0, "flag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget p1, p1, Lcom/metamoji/pdf/PDFAnnotation$Flag;->_bits:I

    iget v0, p0, Lcom/metamoji/pdf/PDFAnnotation$Flag;->_bits:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
