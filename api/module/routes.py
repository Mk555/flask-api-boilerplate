import logging
from flask import jsonify
from flask_jwt_extended import jwt_required
from api.auth import blueprint

@blueprint.route('/test')
@jwt_required()
def test():
    logging.debug('🚀 Message received captain !')
    return jsonify({"msg": '🚀 Message received captain !'}), 200

