.class final enum Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;
.super Ljava/lang/Enum;
.source "NtTextUnitInputStyleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtTextUnitInputStyleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ListCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

.field public static final enum BulletedList:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

.field public static final enum BulletedListLevelDemote:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

.field public static final enum BulletedListLevelPromote:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

.field public static final enum BulletedListNumberd:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

.field public static final enum BulletedListRemove:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;
    .locals 5

    .line 1048
    sget-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedList:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    sget-object v1, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListNumberd:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    sget-object v2, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListLevelDemote:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    sget-object v3, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListLevelPromote:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    sget-object v4, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListRemove:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1049
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    const-string v1, "BulletedList"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedList:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    .line 1050
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    const-string v1, "BulletedListNumberd"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListNumberd:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    .line 1051
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    const-string v1, "BulletedListLevelDemote"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListLevelDemote:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    .line 1052
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    const-string v1, "BulletedListLevelPromote"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListLevelPromote:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    .line 1053
    new-instance v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    const-string v1, "BulletedListRemove"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->BulletedListRemove:Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    .line 1048
    invoke-static {}, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->$values()[Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->$VALUES:[Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

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

    .line 1048
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1048
    const-class v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;
    .locals 1

    .line 1048
    sget-object v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->$VALUES:[Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtTextUnitInputStyleBar$ListCommand;

    return-object v0
.end method
