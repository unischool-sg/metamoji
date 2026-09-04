.class public final enum Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;
.super Ljava/lang/Enum;
.source "NtPDFImportOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPDFImportOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NtPDFImportOptionLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

.field public static final enum NtPDFImportOptionLocationAsIs:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

.field public static final enum NtPDFImportOptionLocationShrinkBottomLeft:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

.field public static final enum NtPDFImportOptionLocationShrinkBottomRight:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

.field public static final enum NtPDFImportOptionLocationShrinkTopLeft:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

.field public static final enum NtPDFImportOptionLocationShrinkTopRight:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;
    .locals 5

    .line 11
    sget-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationAsIs:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    sget-object v1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkTopLeft:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    sget-object v2, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkTopRight:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    sget-object v3, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkBottomRight:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    sget-object v4, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkBottomLeft:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    const-string v1, "NtPDFImportOptionLocationAsIs"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationAsIs:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    .line 13
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    const-string v1, "NtPDFImportOptionLocationShrinkTopLeft"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkTopLeft:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    .line 14
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    const-string v1, "NtPDFImportOptionLocationShrinkTopRight"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkTopRight:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    .line 15
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    const-string v1, "NtPDFImportOptionLocationShrinkBottomRight"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkBottomRight:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    .line 16
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    const-string v1, "NtPDFImportOptionLocationShrinkBottomLeft"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationShrinkBottomLeft:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    .line 11
    invoke-static {}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->$values()[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->$VALUES:[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->$VALUES:[Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    invoke-virtual {v0}, [Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    return-object v0
.end method
