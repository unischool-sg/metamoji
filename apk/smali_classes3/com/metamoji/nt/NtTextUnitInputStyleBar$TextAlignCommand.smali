.class final enum Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;
.super Ljava/lang/Enum;
.source "NtTextUnitInputStyleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtTextUnitInputStyleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextAlignCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

.field public static final enum Center:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

.field public static final enum Left:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

.field public static final enum Right:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;
    .locals 3

    .line 995
    sget-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->Left:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    sget-object v1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->Center:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    sget-object v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->Right:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 996
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->Left:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    .line 997
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    const-string v1, "Center"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->Center:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    .line 998
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    const-string v1, "Right"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->Right:Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    .line 995
    invoke-static {}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->$values()[Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->$VALUES:[Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

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

    .line 995
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 995
    const-class v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;
    .locals 1

    .line 995
    sget-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->$VALUES:[Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtTextUnitInputStyleBar$TextAlignCommand;

    return-object v0
.end method
