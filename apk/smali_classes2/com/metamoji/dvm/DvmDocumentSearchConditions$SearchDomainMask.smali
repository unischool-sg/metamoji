.class public final enum Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;
.super Ljava/lang/Enum;
.source "DvmDocumentSearchConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dvm/DvmDocumentSearchConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchDomainMask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

.field public static final enum All:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

.field public static final enum CopiedShareNote:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

.field public static final enum Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

.field public static final enum Templates:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

.field public static final enum Trash:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

.field public static final enum WithoutShareTemplates:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;
    .locals 6

    .line 10
    sget-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    sget-object v1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Trash:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    sget-object v2, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Templates:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    sget-object v3, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->All:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    sget-object v4, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->CopiedShareNote:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    sget-object v5, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->WithoutShareTemplates:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    const-string v1, "Folders"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    .line 12
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    const-string v1, "Trash"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Trash:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    .line 13
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    const-string v1, "Templates"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Templates:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    .line 14
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    const-string v1, "All"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->All:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    .line 15
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    const-string v1, "CopiedShareNote"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->CopiedShareNote:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    .line 16
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    const-string v1, "WithoutShareTemplates"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->WithoutShareTemplates:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    .line 10
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->$values()[Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    move-result-object v0

    sput-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->$VALUES:[Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    const-class v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;
    .locals 1

    .line 10
    sget-object v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->$VALUES:[Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0}, [Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    return-object v0
.end method
