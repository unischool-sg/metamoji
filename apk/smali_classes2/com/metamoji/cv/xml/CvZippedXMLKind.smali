.class public final enum Lcom/metamoji/cv/xml/CvZippedXMLKind;
.super Ljava/lang/Enum;
.source "CvZippedXMLKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/cv/xml/CvZippedXMLKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/cv/xml/CvZippedXMLKind;

.field public static final enum AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

.field public static final enum COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

.field public static final enum Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

.field public static final enum Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/cv/xml/CvZippedXMLKind;
    .locals 4

    .line 7
    sget-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    sget-object v1, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    sget-object v3, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/cv/xml/CvZippedXMLKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/xml/CvZippedXMLKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    .line 9
    new-instance v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-string v1, "Hayabusadoc"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/xml/CvZippedXMLKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    .line 10
    new-instance v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-string v1, "Part"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/xml/CvZippedXMLKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    .line 11
    new-instance v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-string v1, "AtCollabo"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cv/xml/CvZippedXMLKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    .line 7
    invoke-static {}, Lcom/metamoji/cv/xml/CvZippedXMLKind;->$values()[Lcom/metamoji/cv/xml/CvZippedXMLKind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->$VALUES:[Lcom/metamoji/cv/xml/CvZippedXMLKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/cv/xml/CvZippedXMLKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    const-class v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cv/xml/CvZippedXMLKind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/cv/xml/CvZippedXMLKind;
    .locals 1

    .line 7
    sget-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->$VALUES:[Lcom/metamoji/cv/xml/CvZippedXMLKind;

    invoke-virtual {v0}, [Lcom/metamoji/cv/xml/CvZippedXMLKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/cv/xml/CvZippedXMLKind;

    return-object v0
.end method
