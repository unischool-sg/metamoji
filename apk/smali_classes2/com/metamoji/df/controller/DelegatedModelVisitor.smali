.class public Lcom/metamoji/df/controller/DelegatedModelVisitor;
.super Ljava/lang/Object;
.source "DelegatedModelVisitor.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/DelegatedModelVisitor$IDelegate;
    }
.end annotation


# instance fields
.field private _func:Lcom/metamoji/df/controller/DelegatedModelVisitor$IDelegate;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/DelegatedModelVisitor$IDelegate;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/metamoji/df/controller/DelegatedModelVisitor;->_func:Lcom/metamoji/df/controller/DelegatedModelVisitor$IDelegate;

    return-void
.end method


# virtual methods
.method public visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/df/controller/DelegatedModelVisitor;->_func:Lcom/metamoji/df/controller/DelegatedModelVisitor$IDelegate;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/controller/DelegatedModelVisitor$IDelegate;->invoke(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void
.end method
