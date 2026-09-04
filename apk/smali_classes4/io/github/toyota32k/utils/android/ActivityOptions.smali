.class public final Lio/github/toyota32k/utils/android/ActivityOptions;
.super Ljava/lang/Object;
.source "ActivityExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/android/ActivityOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB+\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003\u00a2\u0006\u0002\u0010\u000fJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u00c2\u0003J2\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0013J\u0014\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0016\u001a\u00020\u0017H\u00d6\u0081\u0004J\n\u0010\u0018\u001a\u00020\u0019H\u00d6\u0081\u0004R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/github/toyota32k/utils/android/ActivityOptions;",
        "",
        "showActionBar",
        "",
        "showStatusBar",
        "requestedOrientation",
        "Lio/github/toyota32k/utils/android/ActivityOrientation;",
        "<init>",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)V",
        "Ljava/lang/Boolean;",
        "apply",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "component1",
        "()Ljava/lang/Boolean;",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)Lio/github/toyota32k/utils/android/ActivityOptions;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/github/toyota32k/utils/android/ActivityOptions$Companion;


# instance fields
.field private final requestedOrientation:Lio/github/toyota32k/utils/android/ActivityOrientation;

.field private final showActionBar:Ljava/lang/Boolean;

.field private final showStatusBar:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/utils/android/ActivityOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/android/ActivityOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/utils/android/ActivityOptions;->Companion:Lio/github/toyota32k/utils/android/ActivityOptions$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/github/toyota32k/utils/android/ActivityOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showActionBar:Ljava/lang/Boolean;

    .line 77
    iput-object p2, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showStatusBar:Ljava/lang/Boolean;

    .line 78
    iput-object p3, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->requestedOrientation:Lio/github/toyota32k/utils/android/ActivityOrientation;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 75
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/android/ActivityOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)V

    return-void
.end method

.method private final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showActionBar:Ljava/lang/Boolean;

    return-object v0
.end method

.method private final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showStatusBar:Ljava/lang/Boolean;

    return-object v0
.end method

.method private final component3()Lio/github/toyota32k/utils/android/ActivityOrientation;
    .locals 1

    iget-object v0, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->requestedOrientation:Lio/github/toyota32k/utils/android/ActivityOrientation;

    return-object v0
.end method

.method public static synthetic copy$default(Lio/github/toyota32k/utils/android/ActivityOptions;Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;ILjava/lang/Object;)Lio/github/toyota32k/utils/android/ActivityOptions;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showActionBar:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showStatusBar:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->requestedOrientation:Lio/github/toyota32k/utils/android/ActivityOrientation;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lio/github/toyota32k/utils/android/ActivityOptions;->copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)Lio/github/toyota32k/utils/android/ActivityOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final apply(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showActionBar:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 82
    instance-of v1, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 83
    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v1, v0}, Lio/github/toyota32k/utils/android/ActivityExtKt;->showActionBar(Landroidx/appcompat/app/AppCompatActivity;Z)V

    .line 86
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showStatusBar:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 87
    invoke-static {p1, v0}, Lio/github/toyota32k/utils/android/ActivityExtKt;->showStatusBar(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 89
    :cond_1
    iget-object v0, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->requestedOrientation:Lio/github/toyota32k/utils/android/ActivityOrientation;

    if-eqz v0, :cond_2

    .line 90
    invoke-static {p1, v0}, Lio/github/toyota32k/utils/android/ActivityExtKt;->setOrientation(Landroidx/fragment/app/FragmentActivity;Lio/github/toyota32k/utils/android/ActivityOrientation;)V

    :cond_2
    return-void
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)Lio/github/toyota32k/utils/android/ActivityOptions;
    .locals 1

    new-instance v0, Lio/github/toyota32k/utils/android/ActivityOptions;

    invoke-direct {v0, p1, p2, p3}, Lio/github/toyota32k/utils/android/ActivityOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lio/github/toyota32k/utils/android/ActivityOrientation;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/toyota32k/utils/android/ActivityOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/toyota32k/utils/android/ActivityOptions;

    iget-object v1, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showActionBar:Ljava/lang/Boolean;

    iget-object v3, p1, Lio/github/toyota32k/utils/android/ActivityOptions;->showActionBar:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showStatusBar:Ljava/lang/Boolean;

    iget-object v3, p1, Lio/github/toyota32k/utils/android/ActivityOptions;->showStatusBar:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->requestedOrientation:Lio/github/toyota32k/utils/android/ActivityOrientation;

    iget-object p1, p1, Lio/github/toyota32k/utils/android/ActivityOptions;->requestedOrientation:Lio/github/toyota32k/utils/android/ActivityOrientation;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showActionBar:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showStatusBar:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->requestedOrientation:Lio/github/toyota32k/utils/android/ActivityOrientation;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/github/toyota32k/utils/android/ActivityOrientation;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showActionBar:Ljava/lang/Boolean;

    iget-object v1, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->showStatusBar:Ljava/lang/Boolean;

    iget-object v2, p0, Lio/github/toyota32k/utils/android/ActivityOptions;->requestedOrientation:Lio/github/toyota32k/utils/android/ActivityOrientation;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ActivityOptions(showActionBar="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", showStatusBar="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestedOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
