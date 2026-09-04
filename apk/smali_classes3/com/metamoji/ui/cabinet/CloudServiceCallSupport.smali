.class public Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;
.super Ljava/lang/Object;
.source "CloudServiceCallSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;
    }
.end annotation


# instance fields
.field private mActivity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method static bridge synthetic -$$Nest$mcallMethodAsyncWithLoginDialog(Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;->callMethodAsyncWithLoginDialog(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;->mActivity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method private callMethodAsyncWithLoginDialog(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PT:",
            "Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;",
            "RT:",
            "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
            ">(TPT;",
            "Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks<",
            "TRT;>;I)V"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$1;-><init>(Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;ILcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V

    const/4 p2, 0x1

    .line 104
    new-array p2, p2, [Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public callMethodAsyncWithLoginDialog(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PT:",
            "Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;",
            "RT:",
            "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
            ">(TPT;",
            "Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks<",
            "TRT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/cabinet/CloudServiceCallSupport;->callMethodAsyncWithLoginDialog(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/ui/cabinet/CloudServiceCallSupport$ServiceCallbacks;I)V

    return-void
.end method
