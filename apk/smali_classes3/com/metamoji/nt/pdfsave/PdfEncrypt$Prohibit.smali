.class public final enum Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;
.super Ljava/lang/Enum;
.source "PdfSaveEncrypt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/pdfsave/PdfEncrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Prohibit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;",
        "",
        "flag",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getFlag",
        "()I",
        "NONE",
        "PRINT",
        "MODIFY",
        "COPY",
        "ANNOTATION",
        "FILL_FORM",
        "COPY_FOR_ACCESIBILITY",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

.field public static final enum ANNOTATION:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

.field public static final enum COPY:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

.field public static final enum COPY_FOR_ACCESIBILITY:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

.field public static final enum FILL_FORM:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

.field public static final enum MODIFY:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

.field public static final enum NONE:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

.field public static final enum PRINT:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;


# instance fields
.field private final flag:I


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;
    .locals 7

    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->NONE:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    sget-object v1, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->PRINT:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    sget-object v2, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->MODIFY:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    sget-object v3, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->COPY:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    sget-object v4, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->ANNOTATION:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    sget-object v5, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->FILL_FORM:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    sget-object v6, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->COPY_FOR_ACCESIBILITY:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->NONE:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    .line 19
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    const-string v1, "PRINT"

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->PRINT:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    .line 20
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    const/4 v1, 0x2

    const/16 v2, 0x8

    const-string v4, "MODIFY"

    invoke-direct {v0, v4, v1, v2}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->MODIFY:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    .line 21
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    const/4 v1, 0x3

    const/16 v2, 0x10

    const-string v4, "COPY"

    invoke-direct {v0, v4, v1, v2}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->COPY:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    .line 22
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    const-string v1, "ANNOTATION"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->ANNOTATION:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    .line 23
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    const/4 v1, 0x5

    const/16 v2, 0x100

    const-string v3, "FILL_FORM"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->FILL_FORM:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    .line 24
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    const/4 v1, 0x6

    const/16 v2, 0x200

    const-string v3, "COPY_FOR_ACCESIBILITY"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->COPY_FOR_ACCESIBILITY:Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    invoke-static {}, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->$values()[Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->$VALUES:[Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->flag:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;
    .locals 1

    const-class v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;
    .locals 1

    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->$VALUES:[Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;

    return-object v0
.end method


# virtual methods
.method public final getFlag()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/metamoji/nt/pdfsave/PdfEncrypt$Prohibit;->flag:I

    return v0
.end method
