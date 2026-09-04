.class public final synthetic Lio/github/toyota32k/logger/UtLog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/github/toyota32k/logger/UtLog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/github/toyota32k/logger/UtLog;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/logger/UtLog$$ExternalSyntheticLambda0;->f$0:Lio/github/toyota32k/logger/UtLog;

    iput p2, p0, Lio/github/toyota32k/logger/UtLog$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lio/github/toyota32k/logger/UtLog$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLog$$ExternalSyntheticLambda0;->f$0:Lio/github/toyota32k/logger/UtLog;

    iget v1, p0, Lio/github/toyota32k/logger/UtLog$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lio/github/toyota32k/logger/UtLog$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/github/toyota32k/logger/UtLog;->scopeWatch$lambda$6(Lio/github/toyota32k/logger/UtLog;ILjava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
