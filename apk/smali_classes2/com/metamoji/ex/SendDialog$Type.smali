.class public final enum Lcom/metamoji/ex/SendDialog$Type;
.super Ljava/lang/Enum;
.source "SendDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ex/SendDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ex/SendDialog$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ex/SendDialog$Type;

.field public static final enum Godc:Lcom/metamoji/ex/SendDialog$Type;

.field public static final enum Jpeg:Lcom/metamoji/ex/SendDialog$Type;

.field public static final enum NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

.field public static final enum Pdf:Lcom/metamoji/ex/SendDialog$Type;

.field public static final enum Text:Lcom/metamoji/ex/SendDialog$Type;

.field public static final enum TextFile:Lcom/metamoji/ex/SendDialog$Type;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ex/SendDialog$Type;
    .locals 6

    .line 63
    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    sget-object v1, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    sget-object v2, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    sget-object v3, Lcom/metamoji/ex/SendDialog$Type;->Godc:Lcom/metamoji/ex/SendDialog$Type;

    sget-object v4, Lcom/metamoji/ex/SendDialog$Type;->Text:Lcom/metamoji/ex/SendDialog$Type;

    sget-object v5, Lcom/metamoji/ex/SendDialog$Type;->TextFile:Lcom/metamoji/ex/SendDialog$Type;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/ex/SendDialog$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/metamoji/ex/SendDialog$Type;

    const-string v1, "Jpeg"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ex/SendDialog$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    .line 65
    new-instance v0, Lcom/metamoji/ex/SendDialog$Type;

    const-string v1, "Pdf"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ex/SendDialog$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    .line 66
    new-instance v0, Lcom/metamoji/ex/SendDialog$Type;

    const-string v1, "NoteAnytime"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ex/SendDialog$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    .line 67
    new-instance v0, Lcom/metamoji/ex/SendDialog$Type;

    const-string v1, "Godc"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ex/SendDialog$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Type;->Godc:Lcom/metamoji/ex/SendDialog$Type;

    .line 68
    new-instance v0, Lcom/metamoji/ex/SendDialog$Type;

    const-string v1, "Text"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ex/SendDialog$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Type;->Text:Lcom/metamoji/ex/SendDialog$Type;

    .line 69
    new-instance v0, Lcom/metamoji/ex/SendDialog$Type;

    const-string v1, "TextFile"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/ex/SendDialog$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/ex/SendDialog$Type;->TextFile:Lcom/metamoji/ex/SendDialog$Type;

    .line 63
    invoke-static {}, Lcom/metamoji/ex/SendDialog$Type;->$values()[Lcom/metamoji/ex/SendDialog$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ex/SendDialog$Type;->$VALUES:[Lcom/metamoji/ex/SendDialog$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/metamoji/ex/SendDialog$Type;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/ex/SendDialog$Type;
    .locals 5

    .line 81
    invoke-static {}, Lcom/metamoji/ex/SendDialog$Type;->values()[Lcom/metamoji/ex/SendDialog$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3}, Lcom/metamoji/ex/SendDialog$Type;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ex/SendDialog$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    const-class v0, Lcom/metamoji/ex/SendDialog$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ex/SendDialog$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ex/SendDialog$Type;
    .locals 1

    .line 63
    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->$VALUES:[Lcom/metamoji/ex/SendDialog$Type;

    invoke-virtual {v0}, [Lcom/metamoji/ex/SendDialog$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ex/SendDialog$Type;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/metamoji/ex/SendDialog$Type;->value:I

    return v0
.end method
