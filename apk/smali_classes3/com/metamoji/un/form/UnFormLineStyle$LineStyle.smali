.class public final enum Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;
.super Ljava/lang/Enum;
.source "UnFormLineStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnFormLineStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum CROSS:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

.field public static final enum DASHED:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

.field public static final enum DOT:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

.field public static final enum DOTTED:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

.field public static final enum NONE:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

.field public static final enum SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;


# instance fields
.field private m_value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;
    .locals 6

    .line 15
    sget-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->NONE:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    sget-object v1, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    sget-object v2, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->DOTTED:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    sget-object v3, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->DASHED:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    sget-object v4, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->DOT:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    sget-object v5, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->CROSS:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    const-class v0, Lcom/metamoji/un/form/UnFormLineStyle;

    .line 17
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->NONE:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    .line 19
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    const-string v1, "SOLID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    .line 21
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    const-string v1, "DOTTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->DOTTED:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    .line 23
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    const-string v1, "DASHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->DASHED:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    .line 25
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    const-string v1, "DOT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->DOT:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    .line 27
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    const-string v1, "CROSS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->CROSS:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    .line 15
    invoke-static {}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->$values()[Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->$VALUES:[Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->m_value:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;
    .locals 5

    .line 39
    invoke-static {}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->values()[Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    invoke-virtual {v3}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->getIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    const-class v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;
    .locals 1

    .line 15
    sget-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->$VALUES:[Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-virtual {v0}, [Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->m_value:I

    return v0
.end method
