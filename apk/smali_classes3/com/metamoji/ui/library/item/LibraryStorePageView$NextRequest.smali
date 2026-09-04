.class public final enum Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;
.super Ljava/lang/Enum;
.source "LibraryStorePageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/library/item/LibraryStorePageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NextRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

.field public static final enum GetAllPages:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

.field public static final enum GetPage:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;
    .locals 2

    .line 56
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->GetAllPages:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    sget-object v1, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->GetPage:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    filled-new-array {v0, v1}, [Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    const-string v1, "GetAllPages"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->GetAllPages:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    .line 58
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    const-string v1, "GetPage"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->GetPage:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    .line 56
    invoke-static {}, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->$values()[Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->$VALUES:[Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 56
    const-class v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;
    .locals 1

    .line 56
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->$VALUES:[Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    invoke-virtual {v0}, [Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    return-object v0
.end method
