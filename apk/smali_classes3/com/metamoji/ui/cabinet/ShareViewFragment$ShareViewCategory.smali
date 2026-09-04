.class final enum Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;
.super Ljava/lang/Enum;
.source "ShareViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ShareViewCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

.field public static final enum ShareViewCategory_NotSet_OpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

.field public static final enum ShareViewCategory_OldOpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

.field public static final enum ShareViewCategory_OpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;
    .locals 3

    .line 292
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ShareViewCategory_OpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    sget-object v1, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ShareViewCategory_NotSet_OpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    sget-object v2, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ShareViewCategory_OldOpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 293
    new-instance v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    const-string v1, "ShareViewCategory_OpenDate"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ShareViewCategory_OpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    .line 294
    new-instance v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    const-string v1, "ShareViewCategory_NotSet_OpenDate"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ShareViewCategory_NotSet_OpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    .line 295
    new-instance v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    const-string v1, "ShareViewCategory_OldOpenDate"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->ShareViewCategory_OldOpenDate:Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    .line 292
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->$values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->$VALUES:[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

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

    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 292
    const-class v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;
    .locals 1

    .line 292
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->$VALUES:[Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    invoke-virtual {v0}, [Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/cabinet/ShareViewFragment$ShareViewCategory;

    return-object v0
.end method
